	.text
	.file	"3addr-or-2.ll"
	.globl	test2                           # -- Begin function test2
	.p2align	4, 0x90
	.type	test2,@function
test2:                                  # @test2
	.cfi_startproc
# %bb.0:
	movl	%esi, %ecx
	movl	%edi, %edx
	movb	%cl, %r8b
	movb	%dl, %cl
	movzbl	%cl, %edx
	movl	%edx, %ecx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	movq	%rdx, %rcx
	andq	$48, %rcx
	movzbl	%r8b, %edx
	movl	%edx, %r8d
	movq	%r8, %rdx
	shrq	$4, %rdx
	movq	%rdx, %r8
	orq	%rcx, %r8
	movl	%r8d, %ecx
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
	movl	$15, %edx
	movl	%ecx, %edi
	movl	%edx, %esi
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
