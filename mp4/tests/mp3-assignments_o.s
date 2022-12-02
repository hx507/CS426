	.text
	.file	"mp3-assignments_o.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	Main_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	callq	Main.main@PLT
                                        # kill: def $rcx killed $rax
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	Main.foo                        # -- Begin function Main.foo
	.p2align	4, 0x90
	.type	Main.foo,@function
Main.foo:                               # @Main.foo
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movl	%esi, %eax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movl	%eax, %r8d
	movq	%rdx, 88(%rsp)
	movl	%r8d, 84(%rsp)
	cmpl	$10, 84(%rsp)
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movl	%eax, 60(%rsp)                  # 4-byte Spill
	movl	%r8d, 56(%rsp)                  # 4-byte Spill
	jge	.LBB1_3
# %bb.1:                                # %true.0
	movl	84(%rsp), %eax
	movl	84(%rsp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movq	88(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movl	%eax, 36(%rsp)                  # 4-byte Spill
	je	.LBB1_5
# %bb.2:                                # %ok.0
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	44(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movl	%r8d, 44(%rsp)                  # 4-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	36(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %r8d
	addl	%ecx, %r8d
	movl	%r8d, 84(%rsp)
	movl	84(%rsp), %r9d
	movl	%r9d, %r10d
	addl	$1, %r10d
	movl	%r10d, 100(%rsp)
	movl	%r10d, 20(%rsp)                 # 4-byte Spill
	movl	%r9d, 16(%rsp)                  # 4-byte Spill
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movl	%ecx, 8(%rsp)                   # 4-byte Spill
	jmp	.LBB1_4
.LBB1_3:                                # %false.0
	movl	$1, 100(%rsp)
.LBB1_4:                                # %end.0
	movl	100(%rsp), %ecx
	movl	%ecx, %eax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_5:                                # %abort
	.cfi_def_cfa_offset 112
	callq	abort@PLT
.Lfunc_end1:
	.size	Main.foo, .Lfunc_end1-Main.foo
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	80(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	je	.LBB2_3
# %bb.1:                                # %ok.1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movl	$4, %r8d
	movq	%rcx, %rdi
	movl	%r8d, %esi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	%r8d, 52(%rsp)                  # 4-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movq	80(%rsp), %rdx
	movl	%ecx, 8(%rdx)
	movq	80(%rsp), %r8
	movl	8(%r8), %r9d
	movq	80(%rsp), %r10
	cmpq	$0, %r10
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movl	%r9d, 28(%rsp)                  # 4-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	je	.LBB2_3
# %bb.2:                                # %ok.2
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	28(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:                                # %abort
	.cfi_def_cfa_offset 96
	callq	abort@PLT
.Lfunc_end2:
	.size	Main.main, .Lfunc_end2-Main.main
	.cfi_endproc
                                        # -- End function
	.globl	Main_new                        # -- Begin function Main_new
	.p2align	4, 0x90
	.type	Main_new,@function
Main_new:                               # @Main_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB3_2
# %bb.1:                                # %okay
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movl	$0, 8(%rdx)
	movl	$0, 8(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end3:
	.size	Main_new, .Lfunc_end3-Main_new
	.cfi_endproc
                                        # -- End function
	.type	str.Object,@object              # @str.Object
	.section	.rodata,"a",@progbits
str.Object:
	.asciz	"Object"
	.size	str.Object, 7

	.type	_Object_vtable_prototype,@object # @_Object_vtable_prototype
	.globl	_Object_vtable_prototype
	.p2align	4
_Object_vtable_prototype:
	.long	0                               # 0x0
	.long	0+8
	.quad	str.Object
	.quad	Object_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Object_vtable_prototype, 48

	.type	str.Int,@object                 # @str.Int
str.Int:
	.asciz	"Int"
	.size	str.Int, 4

	.type	_Int_vtable_prototype,@object   # @_Int_vtable_prototype
	.globl	_Int_vtable_prototype
	.p2align	4
_Int_vtable_prototype:
	.long	1                               # 0x1
	.long	0+16
	.quad	str.Int
	.quad	Int_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Int_vtable_prototype, 48

	.type	str.Bool,@object                # @str.Bool
str.Bool:
	.asciz	"Bool"
	.size	str.Bool, 5

	.type	_Bool_vtable_prototype,@object  # @_Bool_vtable_prototype
	.globl	_Bool_vtable_prototype
	.p2align	4
_Bool_vtable_prototype:
	.long	2                               # 0x2
	.long	0+16
	.quad	str.Bool
	.quad	Bool_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Bool_vtable_prototype, 48

	.type	str.String,@object              # @str.String
str.String:
	.asciz	"String"
	.size	str.String, 7

	.type	_String_vtable_prototype,@object # @_String_vtable_prototype
	.globl	_String_vtable_prototype
	.p2align	4
_String_vtable_prototype:
	.long	3                               # 0x3
	.long	0+16
	.quad	str.String
	.quad	String_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	String_length
	.quad	String_concat
	.quad	String_substr
	.size	_String_vtable_prototype, 72

	.type	str.IO,@object                  # @str.IO
str.IO:
	.asciz	"IO"
	.size	str.IO, 3

	.type	_IO_vtable_prototype,@object    # @_IO_vtable_prototype
	.globl	_IO_vtable_prototype
	.p2align	4
_IO_vtable_prototype:
	.long	4                               # 0x4
	.long	0+8
	.quad	str.IO
	.quad	IO_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.size	_IO_vtable_prototype, 80

	.type	str.Main,@object                # @str.Main
str.Main:
	.asciz	"Main"
	.size	str.Main, 5

	.type	_Main_vtable_prototype,@object  # @_Main_vtable_prototype
	.globl	_Main_vtable_prototype
	.p2align	4
_Main_vtable_prototype:
	.long	5                               # 0x5
	.long	0+16
	.quad	str.Main
	.quad	Main_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Main.foo
	.quad	Main.main
	.size	_Main_vtable_prototype, 96

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"<basic class>"
	.size	str.1, 14

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
	.p2align	4
str.0:
	.asciz	"assignments_o.cl"
	.size	str.0, 17

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
