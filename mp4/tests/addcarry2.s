	.text
	.file	"addcarry2.ll"
	.globl	adc_load_store_64_15            # -- Begin function adc_load_store_64_15
	.p2align	4, 0x90
	.type	adc_load_store_64_15,@function
adc_load_store_64_15:                   # @adc_load_store_64_15
# %bb.0:
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %r8
	movq	%rax, %r9
	addq	$1, %r9
	adcq	$15, (%r8)
	setb	%al
	movzbl	%al, %r8d
	movl	%r8d, %eax
	movq	%rax, (%rcx)
	retq
.Lfunc_end0:
	.size	adc_load_store_64_15, .Lfunc_end0-adc_load_store_64_15
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	$10, 8(%rsp)
	leaq	8(%rsp), %rcx
	leaq	16(%rsp), %r8
	movl	$21, %r9d
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%r9, %rdx
	callq	adc_load_store_64_15@PLT
	movq	16(%rsp), %rcx
	movq	%rcx, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
