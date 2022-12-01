	.text
	.file	"brcond.ll"
	.globl	test1                           # -- Begin function test1
	.p2align	4, 0x90
	.type	test1,@function
test1:                                  # @test1
# %bb.0:                                # %entry
	xorl	%esi, %edi
	testl	$16384, %edi                    # imm = 0x4000
	je	.LBB0_1
# %bb.2:                                # %bb1
	movl	$11, %eax
	retq
.LBB0_1:                                # %bb
	movl	$10, %eax
	retq
.Lfunc_end0:
	.size	test1, .Lfunc_end0-test1
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$107, %edi
	movl	$87, %esi
	callq	test1@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
