	.text
	.file	"addcarry.ll"
	.globl	e                               # -- Begin function e
	.p2align	4, 0x90
	.type	e,@function
e:                                      # @e
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	movl	(%rdi), %ecx
	leal	(%rsi,%rcx), %edx
	addl	%esi, %edx
	setb	%al
	addl	%ecx, %esi
	movl	%edx, (%rdi)
	adcb	$0, %al
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
	leaq	4(%rsp), %rdi
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
