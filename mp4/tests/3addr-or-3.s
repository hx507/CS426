	.text
	.file	"3addr-or-3.ll"
	.globl	test3                           # -- Begin function test3
	.p2align	4, 0x90
	.type	test3,@function
test3:                                  # @test3
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	movl	%edi, %ecx
	movl	%ecx, %edx
	movq	%rax, %rcx
	movl	%edx, %eax
	shll	$5, %eax
	movl	%eax, %edx
	orl	$3, %edx
	movl	%edx, (%rcx)
	retq
.Lfunc_end0:
	.size	test3, .Lfunc_end0-test3
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$15, %ecx
	leaq	4(%rsp), %rdx
	movl	%ecx, %edi
	movq	%rdx, %rsi
	callq	test3@PLT
	movl	4(%rsp), %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
