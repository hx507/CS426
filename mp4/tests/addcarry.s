	.text
	.file	"addcarry.ll"
	.globl	e                               # -- Begin function e
	.p2align	4, 0x90
	.type	e,@function
e:                                      # @e
# %bb.0:
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movl	(%rdx), %r8d
	leal	(%rcx,%r8), %r9d
	addl	%ecx, %r9d
	setb	%r10b
	addl	%r8d, %ecx
	movl	%r9d, (%rdx)
	adcb	$0, %r10b
	movl	%r10d, %eax
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
	movq	%rcx, %rdi
	movl	$21, %esi
	callq	e@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
