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
	movq	g1@GOTPCREL(%rip), %rsi
	movl	(%rsi), %edi
	movl	4(%rsi), %r8d
	leal	(%rdx,%rdi), %r9d
	leal	1(%rdx,%rdi), %r10d
	movl	%r10d, 4(%rcx)
	leal	1(%r8,%r9), %edx
	leal	2(%r8,%r9), %edi
	movl	%edi, 8(%rcx)
	movl	8(%rsi), %edi
	leal	1(%rdi,%rdx), %r8d
	leal	2(%rdi,%rdx), %r9d
	movl	%r9d, 12(%rcx)
	movl	12(%rsi), %edx
	leal	1(%rdx,%r8), %edi
	leal	2(%rdx,%r8), %r9d
	movl	%r9d, 16(%rcx)
	movl	16(%rsi), %edx
	leal	1(%rdx,%rdi), %r8d
	leal	2(%rdx,%rdi), %r9d
	movl	%r9d, 20(%rcx)
	movl	20(%rsi), %edx
	leal	1(%rdx,%r8), %edi
	leal	2(%rdx,%r8), %r9d
	movl	%r9d, 24(%rcx)
	movl	24(%rsi), %edx
	leal	2(%rdx,%rdi), %esi
	movl	%esi, 28(%rcx)
	movl	$102, %eax
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
