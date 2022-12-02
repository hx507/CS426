	.text
	.file	"even.ll"
	.globl	even                            # -- Begin function even
	.p2align	4, 0x90
	.type	even,@function
even:                                   # @even
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, %eax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	je	.LBB0_4
# %bb.1:                                # %nonzero
	movl	16(%rsp), %eax                  # 4-byte Reload
	cmpl	$0, %eax
	jle	.LBB0_3
# %bb.2:                                # %positive
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %edx
	subl	$1, %edx
	movl	%edx, %edi
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	callq	even@PLT
	movb	%al, %cl
	testb	$1, %cl
	movb	%cl, 11(%rsp)                   # 1-byte Spill
	jne	.LBB0_5
	jmp	.LBB0_4
.LBB0_3:                                # %negative
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, %edi
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	callq	even@PLT
	movb	%al, %cl
	testb	$1, %cl
	movb	%cl, 3(%rsp)                    # 1-byte Spill
	jne	.LBB0_5
.LBB0_4:                                # %true
	movb	$1, %cl
	movb	%cl, %al
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %false
	.cfi_def_cfa_offset 32
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	even, .Lfunc_end0-even
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
	movl	$-11, %ecx
	movl	%ecx, %edi
	callq	even@PLT
	movb	%al, %cl
                                        # kill: def $dl killed $cl
	movb	%cl, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
