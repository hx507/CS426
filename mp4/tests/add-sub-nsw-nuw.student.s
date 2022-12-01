	.text
	.file	"add-sub-nsw-nuw.ll"
	.globl	PR30841                         # -- Begin function PR30841
	.p2align	4, 0x90
	.type	PR30841,@function
PR30841:                                # @PR30841
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rax
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	subl	%edx, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	PR30841, .Lfunc_end0-PR30841
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
	movl	$123, %edi
	callq	PR30841@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
