	.text
	.file	"lea-recursion.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	movq	g0@GOTPCREL(%rip), %rcx
	movl	(%rcx), %edx
	movq	g1@GOTPCREL(%rip), %rcx
	movl	(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 4(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 8(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	8(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 12(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	12(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 16(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	16(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 20(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	20(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 24(%rcx)
	movq	g1@GOTPCREL(%rip), %rcx
	movl	24(%rcx), %esi
	movl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, %edx
	addl	%esi, %edx
	movq	g0@GOTPCREL(%rip), %rcx
	movl	%edx, 28(%rcx)
	movl	$102, %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	g0,@object                      # @g0
	.bss
	.globl	g0
	.p2align	5
g0:
	.zero	4000
	.size	g0, 4000

	.type	g1,@object                      # @g1
	.globl	g1
	.p2align	5
g1:
	.zero	4000
	.size	g1, 4000

	.section	".note.GNU-stack","",@progbits
