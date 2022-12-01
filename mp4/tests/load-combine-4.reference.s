	.text
	.file	"load-combine-4.ll"
	.globl	load_i64_by_i8_bswap            # -- Begin function load_i64_by_i8_bswap
	.p2align	4, 0x90
	.type	load_i64_by_i8_bswap,@function
load_i64_by_i8_bswap:                   # @load_i64_by_i8_bswap
	.cfi_startproc
# %bb.0:
	movq	(%rdi), %rax
	bswapq	%rax
	retq
.Lfunc_end0:
	.size	load_i64_by_i8_bswap, .Lfunc_end0-load_i64_by_i8_bswap
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movabsq	$72623859790382856, %rbx        # imm = 0x102030405060708
	movq	%rbx, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	load_i64_by_i8_bswap@PLT
	cmpq	%rbx, %rax
	sete	%al
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
