	.text
	.file	"add-ext-1.ll"
	.globl	add_nsw_consts                  # -- Begin function add_nsw_consts
	.p2align	4, 0x90
	.type	add_nsw_consts,@function
add_nsw_consts:                         # @add_nsw_consts
	.cfi_startproc
# %bb.0:
	movl	%edi, %ecx
	movl	%ecx, %edx
	movl	%edx, %ecx
	addl	$5, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, %rcx
	addq	$7, %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end0:
	.size	add_nsw_consts, .Lfunc_end0-add_nsw_consts
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
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	callq	add_nsw_consts@PLT
	movq	%rax, %rcx
	movq	%rcx, %rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
