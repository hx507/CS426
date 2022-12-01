	.text
	.file	"or-branch.ll"
	.globl	foo                             # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	cmpl	$5, %esi
	jl	.LBB0_2
# %bb.1:                                # %entry
	testl	%edi, %edi
	je	.LBB0_2
# %bb.3:                                # %UnifiedReturnBlock
	movl	%edx, %eax
	retq
.LBB0_2:                                # %cond_true
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$10, %edi
	movl	$29, %esi
	movl	$21, %edx
	callq	foo@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
