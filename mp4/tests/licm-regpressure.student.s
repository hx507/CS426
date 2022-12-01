	.text
	.file	"licm-regpressure.ll"
	.globl	assign                          # -- Begin function assign
	.p2align	4, 0x90
	.type	assign,@function
assign:                                 # @assign
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rcx
	movl	(%rcx), %edx
	movl	%edx, %eax
	retq
.Lfunc_end0:
	.size	assign, .Lfunc_end0-assign
	.cfi_endproc
                                        # -- End function
	.globl	test                            # -- Begin function test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movl	%edi, %ecx
	leaq	4(%rax), %rdx
	leaq	8(%rax), %r8
	leaq	12(%rax), %r9
	leaq	16(%rax), %r10
	leaq	20(%rax), %r11
	leaq	24(%rax), %rbx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	movq	%r10, 24(%rsp)                  # 8-byte Spill
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	.p2align	4, 0x90
.LBB1_1:                                # %loop-body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	callq	assign@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	assign@PLT
	movl	4(%rsp), %ecx                   # 4-byte Reload
	testb	$1, %cl
	jne	.LBB1_1
# %bb.2:                                # %loop-exit
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	test, .Lfunc_end1-test
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movabsq	$455266533481, %rcx             # imm = 0x6A00000069
	movq	%rcx, 8(%rsp)
	movabsq	$463856468075, %rcx             # imm = 0x6C0000006B
	movq	%rcx, 16(%rsp)
	movabsq	$429496729709, %rcx             # imm = 0x640000006D
	movq	%rcx, 24(%rsp)
	movl	$101, 32(%rsp)
	leaq	8(%rsp), %rcx
	xorl	%edi, %edi
	movq	%rcx, %rsi
	callq	test@PLT
	movl	$102, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
