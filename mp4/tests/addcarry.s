	.text
	.file	"addcarry.ll"
	.globl	e                               # -- Begin function e
	.p2align	4, 0x90
	.type	e,@function
e:                                      # @e
# %bb.0:
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movl	%ecx, %edx
	movl	%edx, %ecx
	addl	(%r8), %ecx
	cmpl	%edx, %ecx
	setb	%r9b
	movb	%r9b, %r10b
	andb	$1, %r10b
	movl	%ecx, %r9d
	addl	%edx, %r9d
	movl	%r9d, (%r8)
	cmpl	%edx, %r9d
	setb	%cl
	movb	%cl, %dl
	andb	$1, %dl
	movb	%dl, %cl
	addb	%r10b, %cl
	movb	%cl, %al
	retq
.Lfunc_end0:
	.size	e, .Lfunc_end0-e
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	leaq	4(%rsp), %rcx
	movl	$21, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	callq	e@PLT
	movb	%al, %cl
	movb	%cl, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
