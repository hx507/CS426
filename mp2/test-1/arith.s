	.text
	.file	"arith.ll"
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_2
# %bb.1:                                # %ok.0
	movl	$5, %eax
	retq
.LBB0_2:                                # %abort
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	abort@PLT
.Lfunc_end0:
	.size	Main.main, .Lfunc_end0-Main.main
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	Main.main@PLT
	movl	$main.printout.str, %edi
	movl	%eax, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	main.printout.str,@object       # @main.printout.str
	.section	.rodata,"a",@progbits
	.p2align	4
main.printout.str:
	.asciz	"Main.main() returned %d\n"
	.size	main.printout.str, 25

	.section	".note.GNU-stack","",@progbits
