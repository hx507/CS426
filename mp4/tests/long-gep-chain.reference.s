	.text
	.file	"long-gep-chain.ll"
	.globl	long_gep_chain                  # -- Begin function long_gep_chain
	.p2align	4, 0x90
	.type	long_gep_chain,@function
long_gep_chain:                         # @long_gep_chain
	.cfi_startproc
# %bb.0:
	movq	g0@GOTPCREL(%rip), %rax
	movl	%edi, 128(%rax)
	retq
.Lfunc_end0:
	.size	long_gep_chain, .Lfunc_end0-long_gep_chain
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
	movl	$107, %edi
	callq	long_gep_chain@PLT
	movq	g0@GOTPCREL(%rip), %rax
	movl	128(%rax), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	g0,@object                      # @g0
	.bss
	.globl	g0
	.p2align	5
g0:
	.zero	256
	.size	g0, 256

	.section	".note.GNU-stack","",@progbits
