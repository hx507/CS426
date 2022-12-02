	.text
	.file	"rotate.ll"
	.globl	rotate                          # -- Begin function rotate
	.p2align	4, 0x90
	.type	rotate,@function
rotate:                                 # @rotate
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %edx
	movl	%edi, %r8d
	movb	%dl, %r9b
	movb	%r8b, %dl
	movb	%r9b, %r8b
	andb	$7, %r8b
	movb	%r8b, %cl
	movb	%dl, %r9b
	shrb	%cl, %r9b
	movb	$8, %r10b
	movb	%r10b, %r11b
	subb	%r8b, %r11b
	movb	%r11b, %cl
	movb	%dl, %r8b
	shlb	%cl, %r8b
	movb	%r8b, %dl
	orb	%r9b, %dl
	movb	%dl, %al
	retq
.Lfunc_end0:
	.size	rotate, .Lfunc_end0-rotate
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
	movl	$251, %ecx
	movl	$3, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
	callq	rotate@PLT
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
