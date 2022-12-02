	.text
	.file	"add-i64-2.ll"
	.globl	pr32690                         # -- Begin function pr32690
	.p2align	4, 0x90
	.type	pr32690,@function
pr32690:                                # @pr32690
	.cfi_startproc
# %bb.0:
	movl	%edi, %ecx
	movl	%ecx, %edx
	movl	%edx, %ecx
	movl	%ecx, %edx
	movq	%rdx, %rcx
	addq	$63, %rcx
	movq	%rcx, %rdx
	shrq	$6, %rdx
	movl	%edx, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	pr32690, .Lfunc_end0-pr32690
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
	movl	$2, %ecx
	movl	%ecx, %edi
	callq	pr32690@PLT
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
