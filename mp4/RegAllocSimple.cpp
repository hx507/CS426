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

  // TODO: maintain information about live registers
  // virtual register -> stack slot
  std::map<Register, int> spill_map = {};
  // virtual register -> [physical register, virt subreg idx]
  std::map<Register, std::pair<Register, int>> live_virt_regs = {};

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

  int allocateStackSlot(Register r, unsigned sub_idx) {
    if (spill_map.count(r)) return spill_map[r];

    const TargetRegisterClass *RC = MRI->getRegClass(r);
    RC = TRI->getSubClassWithSubReg(RC, sub_idx);
    int s = MFI->CreateSpillStackObject(TRI->getSpillSize(*RC),
                                        TRI->getSpillAlign(*RC));
    spill_map[r] = s;
    outs() << "Slack slot for register of size: " << TRI->getSpillSize(*RC)
           << "\n";
    return allocateStackSlot(r, sub_idx);
  }

  /// Allocate physical register for virtual register operand
  void allocateOperand(MachineOperand &MO, Register VirtReg, bool is_use) {
    // TODO: allocate physical register for a virtual register
    int sub_reg = MO.getSubReg();
    Register phys;

    if (live_virt_regs.count(VirtReg))
      phys = live_virt_regs[VirtReg].first;
    else {
      MO.dump();
      outs() << "\tNeed a new physical register!\n";
      bool found = false;
      const TargetRegisterClass *RC = MRI->getRegClass(VirtReg);
      MachineBasicBlock *MBB = MO.getParent()->getParent();

      for (MCRegister mcr : RegClassInfo.getOrder(RC)) {
        auto mcr_sub = TRI->getSubReg(mcr, sub_reg);

        bool mcr_live = false;
        for (auto [virt_live, phys_info] : live_virt_regs) {
          auto &&[phys_live, sub_idx] = phys_info;
          auto phys_sub = TRI->getSubReg(phys_live, sub_reg);

          if (!regOverlap(phys_sub, mcr_sub)) {
            // This reg is already allocated to other op
            mcr_live = true;
          }
        }

        if (!used_in_instr.count(mcr) && !mcr_live) {
          found = true;
          phys = mcr;
          break;
        }
      }

      if (!found) {
        // TODO spill some reg
      }

      if (is_use) {
        outs() << "\t Loaded from stack! \n";
        int slot = allocateStackSlot(VirtReg, sub_reg);
        TII->loadRegFromStackSlot(*MBB, MO.getParent(), phys, slot, RC, TRI);
        NumLoads++;
      }
    }

    outs() << "\tAllocate operand: " << printRegUnit(VirtReg, TRI) << " -> "
           << printRegUnit(phys, TRI) << ", which is\n";

    live_virt_regs[VirtReg] = {phys, sub_reg};

    used_in_instr.insert(phys);
    MO.dump();
    if (sub_reg) {
      outs() << "\tSubreg index: " << sub_reg << "\n";
      phys = TRI->getSubReg(phys, sub_reg);
    }
    MO.setReg(phys);
    MO.setSubReg(0);
    MO.dump();

    // Killed regs are no longer live
    if (MO.isKill()) live_virt_regs.erase(VirtReg);
  }

  void allocateInstruction(MachineInstr &MI) {
    // TODO: find and allocate all virtual registers in MI
    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.getReg().isVirtual() && OP.isUse())
        allocateOperand(OP, OP.getReg(), true);

    for (auto &OP : MI.operands())
      if (OP.isReg() && OP.getReg().isVirtual() && OP.isDef())
        allocateOperand(OP, OP.getReg(), false);
  }

  void allocateBasicBlock(MachineBasicBlock &MBB) {
    // TODO: allocate each instruction

    live_virt_regs = {};
    outs() << "===============================\n";

    for (auto &MI : MBB) {
      outs() << "-------------------------------\n";
      used_in_instr = {};

      outs() << "Handle machine inst:\n";
      MI.dump();
      allocateInstruction(MI);
    }

    // Spill all live registers at the end
    if (!MBB.isReturnBlock())
      for (auto [virt_live, phys_info] : live_virt_regs) {
        auto &&[phys_live, sub_idx] = phys_info;
        const TargetRegisterClass *RC = MRI->getRegClass(virt_live);
        RC = TRI->getSubClassWithSubReg(RC, sub_idx);
        TII->storeRegToStackSlot(MBB, MBB.getFirstTerminator(), phys_live, true,
                                 allocateStackSlot(virt_live, sub_idx), RC,
                                 TRI);
        NumStores++;
      }
  }

  bool runOnMachineFunction(MachineFunction &MF) override {
    dbgs() << "simple regalloc running on: " << MF.getName() << "\n";

    MF.dump();

    // Get some useful information about the target
    MRI = &MF.getRegInfo();
    const TargetSubtargetInfo &STI = MF.getSubtarget();
    TRI = STI.getRegisterInfo();
    TII = STI.getInstrInfo();
    MFI = &MF.getFrameInfo();
    MRI->freezeReservedRegs(MF);
    RegClassInfo.runOnMachineFunction(MF);

    // Allocate each basic block locally
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

    outs() << "========================= simple regalloc done! "
              "=========================\n";
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
