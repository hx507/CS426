//===----------------------------------------------------------------------===//
//
/// A register allocator simplified from RegAllocFast.cpp
//
//===----------------------------------------------------------------------===//

#include <algorithm>
#include <map>
#include <set>

#include "llvm/ADT/Statistic.h"
#include "llvm/CodeGen/LiveIntervals.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegAllocRegistry.h"
#include "llvm/CodeGen/RegisterClassInfo.h"
#include "llvm/CodeGen/SlotIndexes.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/InitializePasses.h"
#include "llvm/Pass.h"

using namespace llvm;

#define DEBUG_TYPE "regalloc"

STATISTIC(NumStores, "Number of stores added");
STATISTIC(NumLoads, "Number of loads added");

namespace {
template <class T, class V>
bool has_value(T &m, V value) {
  auto result =
      std::find_if(std::begin(m), std::end(m),
                   [value](const auto &mo) { return mo.second == value; });
  return result != std::end(m);
}
template <class T, class V>
void erase_map_value(T &m, V value) {
  for (auto it = m.begin(); it != m.end();) {
    if (value == (*it).second)
      it = m.erase(it);
    else
      ++it;
  }
}

/// This is class where you will implement your register allocator in
class RegAllocSimple : public MachineFunctionPass {
 public:
  static char ID;
  RegAllocSimple() : MachineFunctionPass(ID) {}

 private:
  /// Some information that might be useful for register allocation
  /// They are initialized in runOnMachineFunction
  MachineFrameInfo *MFI;
  MachineRegisterInfo *MRI;
  const TargetRegisterInfo *TRI;
  const TargetInstrInfo *TII;
  RegisterClassInfo RegClassInfo;

  // maintain information about live registers
  // virtual register -> stack slot
  std::map<Register, int> spill_map = {};
  // virtual register -> [physical register, virt subreg idx]
  std::map<Register, std::pair<Register, int>> live_virt_regs = {};
  std::set<Register> block_existing_regs = {};
  std::set<Register> block_mutated_regs = {};

  std::set<Register> used_in_instr = {};

 public:
  StringRef getPassName() const override { return "Simple Register Allocator"; }

  void getAnalysisUsage(AnalysisUsage &AU) const override {
    AU.setPreservesCFG();
    // At -O1/-O2, llc fails to schedule some required passes if this pass
    // does not preserve these anlyses; these are preserved by recomputing
    // them at the end of runOnFunction(), you can safely ignore these
    AU.addRequired<LiveIntervals>();
    AU.addPreserved<LiveIntervals>();
    AU.addRequired<SlotIndexes>();
    AU.addPreserved<SlotIndexes>();
    MachineFunctionPass::getAnalysisUsage(AU);
  }

  /// Ask the Machine IR verifier to check some simple properties
  /// Enabled with the -verify-machineinstrs flag in llc
  MachineFunctionProperties getRequiredProperties() const override {
    return MachineFunctionProperties().set(
        MachineFunctionProperties::Property::NoPHIs);
  }

  MachineFunctionProperties getSetProperties() const override {
    return MachineFunctionProperties().set(
        MachineFunctionProperties::Property::NoVRegs);
  }

  MachineFunctionProperties getClearedProperties() const override {
    return MachineFunctionProperties().set(
        MachineFunctionProperties::Property::IsSSA);
  }

 private:
  bool regOverlap(Register r1, Register r2) {
    for (MCRegUnitIterator r1u(r1, TRI); r1u.isValid(); ++r1u)
      for (MCRegUnitIterator r2u(r2, TRI); r2u.isValid(); ++r2u)
        if (*r1u == *r2u) return true;

    return false;
  }

  bool regIsKillApprox(MachineInstr &MI, Register v, Register p) {
    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.isDef())  // used by self
        if (OP.getReg() == v || OP.getReg() == p) return false;

    MachineInstr *next = MI.getNextNode();
    while (next) {
      for (auto &OP : next->operands())
        if (OP.isReg() && OP.getReg().isVirtual() && OP.isUse())
          if (OP.getReg() == v) return false;

      for (auto &OP : next->operands())
        if (OP.isReg() && OP.getReg().isVirtual() && OP.isDef())
          if (OP.getReg() == v) {
            LLVM_DEBUG(dbgs() << "Killed: \n");
            LLVM_DEBUG(MI.dump());
            LLVM_DEBUG(OP.dump());
            LLVM_DEBUG(dbgs() << "in \n");
            LLVM_DEBUG(next->dump());

            return true;
          }

      next = next->getNextNode();
    }

    if (MI.getParent()->isReturnBlock()) return true;

    return false;  // conservative, do not know next block
  }

  int allocateStackSlot(Register r) {
    if (spill_map.count(r)) return spill_map[r];

    const TargetRegisterClass *RC = MRI->getRegClass(r);
    // RC = TRI->getSubClassWithSubReg(RC, sub_idx);
    int s = MFI->CreateSpillStackObject(TRI->getSpillSize(*RC),
                                        TRI->getSpillAlign(*RC));
    spill_map[r] = s;
    LLVM_DEBUG(dbgs() << "Slack slot for register of size: "
                      << TRI->getSpillSize(*RC) << " at idx " << s << "\n");
    return allocateStackSlot(r);
  }

  /// Allocate physical register for virtual register operand
  void allocateOperand(MachineOperand &MO, Register VirtReg, bool is_use) {
    const TargetRegisterClass *RC = MRI->getRegClass(VirtReg);
    // if (sub_reg) RC = TRI->getSubClassWithSubReg(RC, sub_reg);
    MachineBasicBlock *MBB = MO.getParent()->getParent();
    int sub_reg = MO.getSubReg();

    Register phys;

    LLVM_DEBUG(MO.dump());
    if (live_virt_regs.count(VirtReg))
      phys = live_virt_regs[VirtReg].first;
    else {
      LLVM_DEBUG(dbgs() << "\tNeed a new physical register!\n");
      bool found = false;

      for (MCRegister mcr : RegClassInfo.getOrder(RC)) {
        bool mcr_live_elsewhere = false;
        for (auto [virt_live, phys_info] : live_virt_regs) {
          auto &&[phys_live, sub_idx] = phys_info;
          if (sub_idx) phys_live = TRI->getSubReg(phys_live, sub_idx);
          // This reg is already allocated to other op
          if (regOverlap(phys_live, mcr)) mcr_live_elsewhere = true;
        }
        for (auto inst_used : used_in_instr) {
          // This reg is already allocated to in this inst
          if (regOverlap(inst_used, mcr)) mcr_live_elsewhere = true;
        }
        for (auto inst_used : block_existing_regs) {
          // This reg is manually used in block
          if (regOverlap(inst_used, mcr)) mcr_live_elsewhere = true;
        }

        if (!mcr_live_elsewhere) {
          found = true;
          phys = mcr;
          break;
        }
      }

      if (!found) {
        // Spill some reg
        // TODO test this
        LLVM_DEBUG(dbgs() << "No avail register found, SPILL OTHER!!!!!\n");
        for (MCRegister mcr : RegClassInfo.getOrder(RC)) {
          Register to_erase = 0;

          for (auto inst_used : used_in_instr) {
            // This reg is already allocated to in this inst
            if (regOverlap(inst_used, mcr)) continue;
          }

          for (auto [virt_live, phys_info] : live_virt_regs) {
            auto &&[phys_live, sub_idx] = phys_info;
            if (phys_live == mcr) {
              TII->storeRegToStackSlot(*MO.getParent()->getParent(),
                                       MO.getParent(), phys_live, true,
                                       allocateStackSlot(virt_live), RC, TRI);
              to_erase = virt_live;
              break;
            }
          }

          live_virt_regs.erase(to_erase);
          break;
        }
      }

      if (is_use) {
        LLVM_DEBUG(dbgs() << "\t Loaded from stack! \n");
        int slot = allocateStackSlot(VirtReg);
        TII->loadRegFromStackSlot(*MBB, MO.getParent(), phys, slot, RC, TRI);
        NumLoads++;
      }
    }

    LLVM_DEBUG(dbgs() << "\tAllocate operand: " << printRegUnit(VirtReg, TRI)
                      << " -> " << printRegUnit(phys, TRI) << ", which is\n");

    live_virt_regs[VirtReg] = {phys, sub_reg};

    if (sub_reg) {
      LLVM_DEBUG(dbgs() << "\tSubreg index: " << sub_reg << "\n");
      phys = TRI->getSubReg(phys, sub_reg);
    }
    used_in_instr.insert(phys);
    MO.setReg(phys);
    MO.setSubReg(0);
    LLVM_DEBUG(MO.dump());
    LLVM_DEBUG(dbgs() << "\n");

    // Killed regs are no longer live
    if (MO.isKill() || MO.isDead() ||
        regIsKillApprox(*MO.getParent(), VirtReg, phys))
      live_virt_regs.erase(VirtReg);
  }

  void allocateInstruction(MachineInstr &MI) {
    // Allocate virtual register tied to hard-coded physical registers first
    //{
    // int i = 0;
    // for (auto &OP : MI.operands()) {
    // if (OP.isReg() && OP.getReg().isVirtual() && OP.isTied()) {
    // unsigned tied_idx = MI.findTiedOperandIdx(i);
    // MachineOperand &tied = MI.getOperand(tied_idx);
    // if (tied.getReg().isPhysical()) OP.setReg(tied.getReg());
    //}
    // i++;
    //}
    //}

    // find and allocate all virtual registers in MI
    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.getReg().isVirtual() && OP.isUse())
        allocateOperand(OP, OP.getReg(), true);

    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.getReg().isVirtual() && OP.isDef()) {
        block_mutated_regs.insert(OP.getReg());
        allocateOperand(OP, OP.getReg(), false);
      }

    // for function calls, spill clobbered regs
    if (MI.isCall()) {
      LLVM_DEBUG(dbgs() << "Spilling for function call! \n");
      std::set<Register> to_erase{};

      for (auto &OP : MI.operands())
        if (OP.isRegMask())
          for (auto [virt_live, phys_info] : live_virt_regs) {
            auto &&[phys_live, sub_idx] = phys_info;

            LLVM_DEBUG(dbgs()
                       << "Spill " << printRegUnit(virt_live, TRI) << " -> "
                       << printRegUnit(phys_live, TRI) << "\n");

            const TargetRegisterClass *RC = MRI->getRegClass(virt_live);
            if (OP.clobbersPhysReg(phys_live)) {
              TII->storeRegToStackSlot(*MI.getParent(), MI, phys_live, true,
                                       allocateStackSlot(virt_live), RC, TRI);
              to_erase.insert(virt_live);
              NumStores++;
            }
          }

      for (auto k : to_erase) live_virt_regs.erase(k);
    }
  }

  void addBlockExistingReg(MachineInstr &MI) {
    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.getReg().isPhysical())
        block_existing_regs.insert(OP.getReg());
  }

  void allocateBasicBlock(MachineBasicBlock &MBB) {
    // allocate each instruction

    live_virt_regs = {};
    block_existing_regs = {};
    block_mutated_regs = {};
    LLVM_DEBUG(dbgs() << "===============================\n");

    for (auto &MI : MBB) addBlockExistingReg(MI);

    for (auto &MI : MBB) {
      LLVM_DEBUG(dbgs() << "-------------------------------\n");
      used_in_instr = {};

      LLVM_DEBUG(dbgs() << "Handle machine inst:\n");
      LLVM_DEBUG(MI.dump());
      allocateInstruction(MI);
    }

    // Spill all live registers at the end
    // track dirty register in block_muted_regs and spill those only
    if (!MBB.isReturnBlock())
      for (auto [virt_live, phys_info] : live_virt_regs) {
        auto &&[phys_live, sub_idx] = phys_info;
        const TargetRegisterClass *RC = MRI->getRegClass(virt_live);
        // RC = TRI->getSubClassWithSubReg(RC, sub_idx);
        if (block_mutated_regs.count(virt_live)) {
          TII->storeRegToStackSlot(MBB, MBB.getFirstTerminator(), phys_live,
                                   true, allocateStackSlot(virt_live), RC, TRI);
          NumStores++;
        }
      }
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    LLVM_DEBUG(dbgs() << "simple regalloc running on: " << MF.getName()
                      << "\n");

    LLVM_DEBUG(MF.dump());

    // Get some useful information about the target
    MRI = &MF.getRegInfo();
    const TargetSubtargetInfo &STI = MF.getSubtarget();
    TRI = STI.getRegisterInfo();
    TII = STI.getInstrInfo();
    MFI = &MF.getFrameInfo();
    MRI->freezeReservedRegs(MF);
    RegClassInfo.runOnMachineFunction(MF);

    // Allocate each basic block locally
    spill_map = {};
    for (MachineBasicBlock &MBB : MF) {
      allocateBasicBlock(MBB);
    }

    MRI->clearVirtRegs();

    // Recompute the analyses that we marked as preserved above, you can
    // safely ignore this code
    SlotIndexes &SI = getAnalysis<SlotIndexes>();
    SI.releaseMemory();
    SI.runOnMachineFunction(MF);

    LiveIntervals &LI = getAnalysis<LiveIntervals>();
    LI.releaseMemory();
    LI.runOnMachineFunction(MF);

    LLVM_DEBUG(dbgs() << "========================= simple regalloc done! "
                         "=========================\n");
    return true;
  }
};
}  // namespace

/// Create the initializer and register the pass
char RegAllocSimple::ID = 0;
FunctionPass *llvm::createSimpleRegisterAllocator() {
  return new RegAllocSimple();
}
INITIALIZE_PASS(RegAllocSimple, "regallocsimple", "Simple Register Allocator",
                false, false)
static RegisterRegAlloc simpleRegAlloc("simple", "simple register allocator",
                                       createSimpleRegisterAllocator);
