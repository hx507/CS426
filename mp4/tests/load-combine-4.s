	.text
	.file	"load-combine-4.ll"
	.globl	load_i64_by_i8_bswap            # -- Begin function load_i64_by_i8_bswap
	.p2align	4, 0x90
	.type	load_i64_by_i8_bswap,@function
load_i64_by_i8_bswap:                   # @load_i64_by_i8_bswap
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movl	%ecx, %esi
	movq	%rsi, %rcx
	shlq	$56, %rcx
	movzbl	1(%rdx), %esi
	movl	%esi, %r8d
	movq	%r8, %rsi
	shlq	$48, %rsi
	movq	%rsi, %r8
	orq	%rcx, %r8
	movzbl	2(%rdx), %ecx
	movl	%ecx, %esi
	movq	%rsi, %rcx
	shlq	$40, %rcx
	movq	%r8, %rsi
	orq	%rcx, %rsi
	movzbl	3(%rdx), %ecx
	movl	%ecx, %r8d
	movq	%r8, %rcx
	shlq	$32, %rcx
	movq	%rsi, %r8
	orq	%rcx, %r8
	movzbl	4(%rdx), %ecx
	movl	%ecx, %esi
	movq	%rsi, %rcx
	shlq	$24, %rcx
	movq	%r8, %rsi
	orq	%rcx, %rsi
	movzbl	5(%rdx), %ecx
	movl	%ecx, %r8d
	movq	%r8, %rcx
	shlq	$16, %rcx
	movq	%rsi, %r8
	orq	%rcx, %r8
	movzbl	6(%rdx), %ecx
	movl	%ecx, %esi
	movq	%rsi, %rcx
	shlq	$8, %rcx
	movq	%r8, %rsi
	orq	%rcx, %rsi
	movzbl	7(%rdx), %ecx
	movl	%ecx, %edx
	movq	%rsi, %rcx
	orq	%rdx, %rcx
	movq	%rcx, %rax
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movabsq	$72623859790382856, %rcx        # imm = 0x102030405060708
	movq	%rcx, 16(%rsp)
	leaq	16(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	load_i64_by_i8_bswap@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	subq	%rcx, %rdx
	sete	%cl
	movb	%cl, %al
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
