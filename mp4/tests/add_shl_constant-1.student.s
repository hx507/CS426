	.text
	.file	"add_shl_constant-1.ll"
	.globl	add_shl_add_constant_1_i32      # -- Begin function add_shl_add_constant_1_i32
	.p2align	4, 0x90
	.type	add_shl_add_constant_1_i32,@function
add_shl_add_constant_1_i32:             # @add_shl_add_constant_1_i32
# %bb.0:
	movl	%esi, %ecx
	movl	%edi, %edx
	leal	984(%rcx,%rdx,8), %r8d
	movl	%r8d, %eax
	retq
.Lfunc_end0:
	.size	add_shl_add_constant_1_i32, .Lfunc_end0-add_shl_add_constant_1_i32
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
	movl	$7, %esi
	callq	add_shl_add_constant_1_i32@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
