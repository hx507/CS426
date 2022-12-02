	.text
	.file	"load-combine-2.ll"
	.globl	load_i32_by_i16_i8              # -- Begin function load_i32_by_i16_i8
	.p2align	4, 0x90
	.type	load_i32_by_i16_i8,@function
load_i32_by_i16_i8:                     # @load_i32_by_i16_i8
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movzwl	(%rdx), %ecx
	movzbl	2(%rdx), %esi
	movl	%esi, %r8d
	shll	$16, %r8d
	movzbl	3(%rdx), %esi
	movl	%esi, %edx
	shll	$24, %edx
	movl	%r8d, %esi
	orl	%edx, %esi
	movl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, %eax
	retq
.Lfunc_end0:
	.size	load_i32_by_i16_i8, .Lfunc_end0-load_i32_by_i16_i8
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
	movl	$16909060, 4(%rsp)              # imm = 0x1020304
	leaq	4(%rsp), %rcx
	movq	%rcx, %rdi
	callq	load_i32_by_i16_i8@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	subl	$16909060, %edx                 # imm = 0x1020304
	sete	%cl
	movb	%cl, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
