	.text
	.file	"lea-recursion.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	movq	g0@GOTPCREL(%rip), %rax
	movl	(%rax), %edx
	movq	g1@GOTPCREL(%rip), %r8
	movl	(%r8), %esi
	movl	4(%r8), %edi
	leal	(%rdx,%rsi), %ecx
	leal	1(%rdx,%rsi), %edx
	movl	%edx, 4(%rax)
	leal	1(%rdi,%rcx), %edx
	leal	2(%rdi,%rcx), %ecx
	movl	%ecx, 8(%rax)
	movl	8(%r8), %ecx
	leal	1(%rcx,%rdx), %esi
	leal	2(%rcx,%rdx), %ecx
	movl	%ecx, 12(%rax)
	movl	12(%r8), %ecx
	leal	1(%rcx,%rsi), %edx
	leal	2(%rcx,%rsi), %ecx
	movl	%ecx, 16(%rax)
	movl	16(%r8), %ecx
	leal	1(%rcx,%rdx), %esi
	leal	2(%rcx,%rdx), %ecx
	movl	%ecx, 20(%rax)
	movl	20(%r8), %ecx
	leal	1(%rcx,%rsi), %edx
	leal	2(%rcx,%rsi), %ecx
	movl	%ecx, 24(%rax)
	movl	24(%r8), %ecx
	leal	2(%rcx,%rdx), %ecx
	movl	%ecx, 28(%rax)
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
