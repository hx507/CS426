	.text
	.file	"load-combine-1.ll"
	.globl	load_i32_by_i8                  # -- Begin function load_i32_by_i8
	.p2align	4, 0x90
	.type	load_i32_by_i8,@function
load_i32_by_i8:                         # @load_i32_by_i8
	.cfi_startproc
# %bb.0:
	movl	(%rdi), %eax
	retq
.Lfunc_end0:
	.size	load_i32_by_i8, .Lfunc_end0-load_i32_by_i8
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
	leaq	4(%rsp), %rdi
	callq	load_i32_by_i8@PLT
	cmpl	$16909060, %eax                 # imm = 0x1020304
	sete	%al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
