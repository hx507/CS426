	.text
	.file	"licm-regpressure.ll"
	.globl	assign                          # -- Begin function assign
	.p2align	4, 0x90
	.type	assign,@function
assign:                                 # @assign
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movzbl	1(%rdx), %esi
	movl	%esi, %r8d
	shll	$8, %r8d
	movl	%r8d, %esi
	orl	%ecx, %esi
	movzbl	2(%rdx), %ecx
	movl	%ecx, %r8d
	shll	$16, %r8d
	movl	%esi, %ecx
	orl	%r8d, %ecx
	movzbl	3(%rdx), %esi
	movl	%esi, %edx
	shll	$24, %edx
	movl	%ecx, %esi
	orl	%edx, %esi
	movl	%esi, %eax
	retq
.Lfunc_end0:
	.size	assign, .Lfunc_end0-assign
	.cfi_endproc
                                        # -- End function
	.globl	test                            # -- Begin function test
	.p2align	4, 0x90
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rsi, %rax
	movl	%edi, %ecx
	movb	%cl, %dl
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movb	%dl, 55(%rsp)                   # 1-byte Spill
	jmp	.LBB1_1
.LBB1_1:                                # %loop-header
	jmp	.LBB1_2
.LBB1_2:                                # %loop-body
                                        # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdx
	addq	$4, %rdx
	movq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rcx, %r8
	addq	$12, %r8
	movq	%rcx, %r9
	addq	$16, %r9
	movq	%rcx, %r10
	addq	$20, %r10
	movq	%rcx, %r11
	addq	$24, %r11
	movq	%rcx, %rdi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, (%rsp)                    # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, (%rsp)                    # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	assign@PLT
                                        # kill: def $ecx killed $eax
	movb	55(%rsp), %cl                   # 1-byte Reload
	testb	$1, %cl
	jne	.LBB1_2
# %bb.3:                                # %loop-exit
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	test, .Lfunc_end1-test
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$105, 8(%rsp)
	movl	$106, 12(%rsp)
	movl	$107, 16(%rsp)
	movl	$108, 20(%rsp)
	movl	$109, 24(%rsp)
	movl	$100, 28(%rsp)
	movl	$101, 32(%rsp)
	xorl	%ecx, %ecx
	leaq	8(%rsp), %rdx
	movl	%ecx, %edi
	movq	%rdx, %rsi
	callq	test@PLT
	movl	$102, %ecx
	movl	%ecx, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
