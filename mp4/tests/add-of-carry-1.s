	.text
	.file	"add-of-carry-1.ll"
	.globl	test1                           # -- Begin function test1
	.p2align	4, 0x90
	.type	test1,@function
test1:                                  # @test1
	.cfi_startproc
# %bb.0:
	movl	%esi, %ecx
	movl	%edi, %edx
	movl	%edx, %r8d
	movl	%ecx, %edx
	movl	%edx, %ecx
	addl	%r8d, %ecx
	cmpl	%edx, %ecx
	setb	%dl
	movb	%dl, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %edx
	movl	%ecx, %r8d
	addl	%edx, %r8d
	movl	%r8d, %eax
	retq
.Lfunc_end0:
	.size	test1, .Lfunc_end0-test1
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
	movl	$2, %ecx
	movl	$12831, %edx                    # imm = 0x321F
	movl	%ecx, %edi
	movl	%edx, %esi
	callq	test1@PLT
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
