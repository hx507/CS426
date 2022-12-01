	.text
	.file	"8bit_cmov_of_trunc_promotion-1.ll"
	.globl	t0                              # -- Begin function t0
	.p2align	4, 0x90
	.type	t0,@function
t0:                                     # @t0
	.cfi_startproc
# %bb.0:
                                        # kill: def $edx killed $edx def $rdx
                                        # kill: def $esi killed $esi def $rsi
                                        # kill: def $edi killed $edi def $rdi
	leal	(%rdi,%rdx), %ecx
	leal	(%rsi,%rdx), %eax
	cmpb	%al, %cl
	cmovgl	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end0:
	.size	t0, .Lfunc_end0-t0
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
	movl	$15, %edi
	movl	$8, %esi
	movl	$19, %edx
	callq	t0@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
