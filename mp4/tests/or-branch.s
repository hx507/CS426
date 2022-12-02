	.text
	.file	"or-branch.ll"
	.globl	foo                             # -- Begin function foo
	.p2align	4, 0x90
	.type	foo,@function
foo:                                    # @foo
# %bb.0:                                # %entry
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movl	%edx, %eax
	movl	%esi, %ecx
	movl	%edi, %r8d
	movl	%r8d, %r9d
	movl	%ecx, %r10d
	movl	%eax, %r11d
	cmpl	$0, %r9d
	sete	%bl
	cmpl	$5, %r10d
	setl	%bpl
	movb	%bpl, %r14b
	orb	%bl, %r14b
	testb	$1, %r14b
	movl	%r8d, -4(%rsp)                  # 4-byte Spill
	movl	%r9d, -8(%rsp)                  # 4-byte Spill
	movl	%ecx, -12(%rsp)                 # 4-byte Spill
	movl	%r10d, -16(%rsp)                # 4-byte Spill
	movl	%eax, -20(%rsp)                 # 4-byte Spill
	movl	%r11d, -24(%rsp)                # 4-byte Spill
	movb	%r14b, -25(%rsp)                # 1-byte Spill
	movb	%bpl, -26(%rsp)                 # 1-byte Spill
	movb	%bl, -27(%rsp)                  # 1-byte Spill
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %cond_true
	movl	$1, %ecx
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_2:                                # %UnifiedReturnBlock
	movl	-24(%rsp), %ecx                 # 4-byte Reload
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$10, %ecx
	movl	$29, %r8d
	movl	$21, %r9d
	movl	%ecx, %edi
	movl	%r8d, %esi
	movl	%r9d, %edx
	callq	foo@PLT
	movl	%eax, %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
