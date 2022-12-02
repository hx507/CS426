	.text
	.file	"add-of-carry-2.ll"
	.globl	test2                           # -- Begin function test2
	.p2align	4, 0x90
	.type	test2,@function
test2:                                  # @test2
	.cfi_startproc
# %bb.0:
	movl	%edx, %ecx
	movl	%esi, %r8d
	movl	%edi, %r9d
	movl	%r9d, %r10d
	movl	%r8d, %r9d
	movl	%ecx, %r8d
	cmpl	%r9d, %r10d
	seta	%cl
	movb	%cl, %r9b
	andb	$1, %r9b
	movb	%r9b, %cl
	negb	%cl
	movsbl	%cl, %r9d
	movl	%r9d, %ecx
	addl	%r8d, %ecx
	movl	%ecx, %eax
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
	movl	$2, %ecx
	movl	$12831, %r8d                    # imm = 0x321F
	movl	%ecx, %edi
	movl	%r8d, %esi
	movl	%ecx, %edx
	callq	test2@PLT
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
