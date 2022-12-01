	.text
	.file	"fib.ll"
	.globl	fib                             # -- Begin function fib
	.p2align	4, 0x90
	.type	fib,@function
fib:                                    # @fib
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, %eax
	cmpl	$2, %eax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	jg	.LBB0_2
# %bb.1:                                # %then
	movl	$1, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:                                # %else
	.cfi_def_cfa_offset 32
	movq	8(%rsp), %rcx                   # 8-byte Reload
	leal	-1(%rcx), %edx
	addl	$-2, %ecx
	movl	%edx, %edi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	fib@PLT
	movl	%eax, %ecx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movl	%edx, %edi
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	callq	fib@PLT
	movl	%eax, %ecx
	movl	20(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movl	%ecx, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	fib, .Lfunc_end0-fib
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
	movl	$12, %edi
	callq	fib@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
