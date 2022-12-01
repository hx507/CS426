	.text
	.file	"licm-regpressure.ll"
	.globl	assign                          # -- Begin function assign
	.p2align	4, 0x90
	.type	assign,@function
assign:                                 # @assign
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, 12(%rsp)                  # 4-byte Spill
	leaq	4(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	leaq	8(%rsi), %r12
	leaq	12(%rsi), %r13
	leaq	16(%rsi), %rbp
	leaq	20(%rsi), %r14
	leaq	24(%rsi), %r15
	.p2align	4, 0x90
.LBB1_1:                                # %loop-body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	assign@PLT
	movq	16(%rsp), %rdi                  # 8-byte Reload
	callq	assign@PLT
	movq	%r12, %rdi
	callq	assign@PLT
	movq	%r13, %rdi
	callq	assign@PLT
	movq	%rbp, %rdi
	callq	assign@PLT
	movq	%r14, %rdi
	callq	assign@PLT
	movq	%r15, %rdi
	callq	assign@PLT
	testb	$1, 12(%rsp)                    # 1-byte Folded Reload
	jne	.LBB1_1
# %bb.2:                                # %loop-exit
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	movabsq	$455266533481, %rax             # imm = 0x6A00000069
	movq	%rax, 8(%rsp)
	movabsq	$463856468075, %rax             # imm = 0x6C0000006B
	movq	%rax, 16(%rsp)
	movabsq	$429496729709, %rax             # imm = 0x640000006D
	movq	%rax, 24(%rsp)
	movl	$101, 32(%rsp)
	leaq	8(%rsp), %rsi
	xorl	%edi, %edi
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
