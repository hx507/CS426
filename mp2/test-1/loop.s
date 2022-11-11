	.text
	.file	"loop.ll"
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:
	movl	$8, -12(%rsp)
	leaq	-12(%rsp), %rax
	.p2align	4, 0x90
.LBB0_1:                                # %loop_body0
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rsp), %ecx
	incl	%ecx
	movl	%ecx, -12(%rsp)
	movq	%rax, -8(%rsp)
	cmpl	$10, %ecx
	jl	.LBB0_1
# %bb.2:                                # %loop_done1
	movl	-12(%rsp), %eax
	retq
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
