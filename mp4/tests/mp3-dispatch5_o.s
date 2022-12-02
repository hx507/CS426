	.text
	.file	"mp3-dispatch5_o.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	Main_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	callq	Main.main@PLT
                                        # kill: def $rcx killed $rax
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 608
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 592(%rsp)
	movq	592(%rsp), %rdx
	movq	8(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rax, 584(%rsp)                 # 8-byte Spill
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	movq	%rsi, 568(%rsp)                 # 8-byte Spill
	movq	%rdx, 560(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.1:                                # %ok.1
	movq	568(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 568(%rsp)                 # 8-byte Spill
	movq	%rdx, 552(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 544(%rsp)                 # 8-byte Spill
	movl	%ecx, 540(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.2:                                # %ok.0
	movq	544(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	540(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	movl	%r8d, 540(%rsp)                 # 4-byte Spill
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	16(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 520(%rsp)                 # 8-byte Spill
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.3:                                # %ok.3
	movq	520(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	movq	%rdx, 504(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 496(%rsp)                 # 8-byte Spill
	movl	%ecx, 492(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.4:                                # %ok.2
	movq	496(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	492(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 496(%rsp)                 # 8-byte Spill
	movl	%r8d, 492(%rsp)                 # 4-byte Spill
	movq	%rdx, 480(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	24(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 472(%rsp)                 # 8-byte Spill
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.5:                                # %ok.5
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	movq	%rdx, 456(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	movl	%ecx, 444(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.6:                                # %ok.4
	movq	448(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	444(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 448(%rsp)                 # 8-byte Spill
	movl	%r8d, 444(%rsp)                 # 4-byte Spill
	movq	%rdx, 432(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	40(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 424(%rsp)                 # 8-byte Spill
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.7:                                # %ok.7
	movq	424(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	movq	%rdx, 408(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	movl	%ecx, 396(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.8:                                # %ok.6
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	396(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movl	%r8d, 396(%rsp)                 # 4-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	40(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 376(%rsp)                 # 8-byte Spill
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.9:                                # %ok.9
	movq	_C_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	376(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 376(%rsp)                 # 8-byte Spill
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	callq	*48(%rcx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	movl	%ecx, 348(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.10:                               # %ok.8
	movq	352(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	348(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movl	%r8d, 348(%rsp)                 # 4-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	40(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.11:                               # %ok.11
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	48(%rcx), %rdx
	movq	328(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	movq	%r8, %rdi
	movq	%rsi, 328(%rsp)                 # 8-byte Spill
	movq	%r8, 312(%rsp)                  # 8-byte Spill
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movq	%rdx, 296(%rsp)                 # 8-byte Spill
	callq	*%rdx
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movl	%ecx, 284(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.12:                               # %ok.10
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	284(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	movl	%r8d, 284(%rsp)                 # 4-byte Spill
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	40(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 264(%rsp)                 # 8-byte Spill
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.13:                               # %ok.13
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	48(%rcx), %rdx
	movq	264(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	movq	%r8, %rdi
	movq	%rsi, 264(%rsp)                 # 8-byte Spill
	movq	%r8, 248(%rsp)                  # 8-byte Spill
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	callq	*%rdx
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	movl	%ecx, 220(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.14:                               # %ok.12
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	220(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	movl	%r8d, 220(%rsp)                 # 4-byte Spill
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	32(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.15:                               # %ok.15
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movl	%ecx, 172(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.16:                               # %ok.14
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	172(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movl	%r8d, 172(%rsp)                 # 4-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	32(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	je	.LBB1_23
# %bb.17:                               # %ok.17
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	152(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	callq	*48(%rcx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movl	%ecx, 124(%rsp)                 # 4-byte Spill
	je	.LBB1_23
# %bb.18:                               # %ok.16
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	124(%rsp), %r8d                 # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movl	%r8d, 124(%rsp)                 # 4-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	32(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	je	.LBB1_23
# %bb.19:                               # %ok.19
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	48(%rcx), %rdx
	movq	104(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	movq	%r8, %rdi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*%rdx
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	je	.LBB1_23
# %bb.20:                               # %ok.18
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	60(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%r8d, 60(%rsp)                  # 4-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	592(%rsp), %rcx
	movq	8(%rcx), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB1_23
# %bb.21:                               # %ok.21
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	*48(%rcx)
	movl	%eax, %ecx
	movq	592(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	je	.LBB1_23
# %bb.22:                               # %ok.20
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 8
	retq
.LBB1_23:                               # %abort
	.cfi_def_cfa_offset 608
	callq	abort@PLT
.Lfunc_end1:
	.size	Main.main, .Lfunc_end1-Main.main
	.cfi_endproc
                                        # -- End function
	.globl	Main_new                        # -- Begin function Main_new
	.p2align	4, 0x90
	.type	Main_new,@function
Main_new:                               # @Main_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB2_2
# %bb.1:                                # %okay
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	$0, 40(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	A_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	B_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rdx, 16(%rcx)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	C_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	B_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	C_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 40(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end2:
	.size	Main_new, .Lfunc_end2-Main_new
	.cfi_endproc
                                        # -- End function
	.globl	A.f                             # -- Begin function A.f
	.p2align	4, 0x90
	.type	A.f,@function
A.f:                                    # @A.f
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movl	$5, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end3:
	.size	A.f, .Lfunc_end3-A.f
	.cfi_endproc
                                        # -- End function
	.globl	A_new                           # -- Begin function A_new
	.p2align	4, 0x90
	.type	A_new,@function
A_new:                                  # @A_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end4:
	.size	A_new, .Lfunc_end4-A_new
	.cfi_endproc
                                        # -- End function
	.globl	B_new                           # -- Begin function B_new
	.p2align	4, 0x90
	.type	B_new,@function
B_new:                                  # @B_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB5_2
# %bb.1:                                # %okay
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end5:
	.size	B_new, .Lfunc_end5-B_new
	.cfi_endproc
                                        # -- End function
	.globl	C.f                             # -- Begin function C.f
	.p2align	4, 0x90
	.type	C.f,@function
C.f:                                    # @C.f
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movl	$6, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end6:
	.size	C.f, .Lfunc_end6-C.f
	.cfi_endproc
                                        # -- End function
	.globl	C_new                           # -- Begin function C_new
	.p2align	4, 0x90
	.type	C_new,@function
C_new:                                  # @C_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_C_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB7_2
# %bb.1:                                # %okay
	movq	_C_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end7:
	.size	C_new, .Lfunc_end7-C_new
	.cfi_endproc
                                        # -- End function
	.type	str.Object,@object              # @str.Object
	.section	.rodata,"a",@progbits
str.Object:
	.asciz	"Object"
	.size	str.Object, 7

	.type	_Object_vtable_prototype,@object # @_Object_vtable_prototype
	.globl	_Object_vtable_prototype
	.p2align	4
_Object_vtable_prototype:
	.long	0                               # 0x0
	.long	0+8
	.quad	str.Object
	.quad	Object_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Object_vtable_prototype, 48

	.type	str.Int,@object                 # @str.Int
str.Int:
	.asciz	"Int"
	.size	str.Int, 4

	.type	_Int_vtable_prototype,@object   # @_Int_vtable_prototype
	.globl	_Int_vtable_prototype
	.p2align	4
_Int_vtable_prototype:
	.long	1                               # 0x1
	.long	0+16
	.quad	str.Int
	.quad	Int_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Int_vtable_prototype, 48

	.type	str.Bool,@object                # @str.Bool
str.Bool:
	.asciz	"Bool"
	.size	str.Bool, 5

	.type	_Bool_vtable_prototype,@object  # @_Bool_vtable_prototype
	.globl	_Bool_vtable_prototype
	.p2align	4
_Bool_vtable_prototype:
	.long	2                               # 0x2
	.long	0+16
	.quad	str.Bool
	.quad	Bool_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Bool_vtable_prototype, 48

	.type	str.String,@object              # @str.String
str.String:
	.asciz	"String"
	.size	str.String, 7

	.type	_String_vtable_prototype,@object # @_String_vtable_prototype
	.globl	_String_vtable_prototype
	.p2align	4
_String_vtable_prototype:
	.long	3                               # 0x3
	.long	0+16
	.quad	str.String
	.quad	String_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	String_length
	.quad	String_concat
	.quad	String_substr
	.size	_String_vtable_prototype, 72

	.type	str.IO,@object                  # @str.IO
str.IO:
	.asciz	"IO"
	.size	str.IO, 3

	.type	_IO_vtable_prototype,@object    # @_IO_vtable_prototype
	.globl	_IO_vtable_prototype
	.p2align	4
_IO_vtable_prototype:
	.long	4                               # 0x4
	.long	0+8
	.quad	str.IO
	.quad	IO_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.size	_IO_vtable_prototype, 80

	.type	str.Main,@object                # @str.Main
str.Main:
	.asciz	"Main"
	.size	str.Main, 5

	.type	_Main_vtable_prototype,@object  # @_Main_vtable_prototype
	.globl	_Main_vtable_prototype
	.p2align	4
_Main_vtable_prototype:
	.long	5                               # 0x5
	.long	0+48
	.quad	str.Main
	.quad	Main_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Main.main
	.size	_Main_vtable_prototype, 88

	.type	str.A,@object                   # @str.A
str.A:
	.asciz	"A"
	.size	str.A, 2

	.type	_A_vtable_prototype,@object     # @_A_vtable_prototype
	.globl	_A_vtable_prototype
	.p2align	4
_A_vtable_prototype:
	.long	6                               # 0x6
	.long	0+8
	.quad	str.A
	.quad	A_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	A.f
	.size	_A_vtable_prototype, 56

	.type	str.B,@object                   # @str.B
str.B:
	.asciz	"B"
	.size	str.B, 2

	.type	_B_vtable_prototype,@object     # @_B_vtable_prototype
	.globl	_B_vtable_prototype
	.p2align	4
_B_vtable_prototype:
	.long	7                               # 0x7
	.long	0+8
	.quad	str.B
	.quad	B_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	A.f
	.size	_B_vtable_prototype, 56

	.type	str.C,@object                   # @str.C
str.C:
	.asciz	"C"
	.size	str.C, 2

	.type	_C_vtable_prototype,@object     # @_C_vtable_prototype
	.globl	_C_vtable_prototype
	.p2align	4
_C_vtable_prototype:
	.long	8                               # 0x8
	.long	0+8
	.quad	str.C
	.quad	C_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	C.f
	.size	_C_vtable_prototype, 56

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"<basic class>"
	.size	str.1, 14

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"dispatch5_o.cl"
	.size	str.0, 15

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
