	.text
	.file	"3addr-or-2.ll"
	.globl	test2                           # -- Begin function test2
	.p2align	4, 0x90
	.type	test2,@function
test2:                                  # @test2
	.cfi_startproc
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	shll	$4, %edi
	andl	$48, %edi
	movzbl	%sil, %eax
	shrq	$4, %rax
	orl	%edi, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	test2, .Lfunc_end0-test2
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
	movl	$2, %edi
	movl	$15, %esi
	callq	test2@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
