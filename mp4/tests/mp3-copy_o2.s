	.text
	.file	"mp3-copy_o2.ll"
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
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$200, %rsp
	.cfi_def_cfa_offset 208
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 176(%rsp)
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	A_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 192(%rsp)
	movq	$0, 184(%rsp)
	movq	192(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	je	.LBB1_8
# %bb.1:                                # %ok.0
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	callq	*40(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 184(%rsp)
	movq	184(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	je	.LBB1_8
# %bb.2:                                # %ok.1
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movl	$21, %r8d
	movq	%rcx, %rdi
	movl	%r8d, %esi
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movl	%r8d, 116(%rsp)                 # 4-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	192(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	je	.LBB1_8
# %bb.3:                                # %ok.3
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	176(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	je	.LBB1_8
# %bb.4:                                # %ok.2
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	76(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movl	%r8d, 76(%rsp)                  # 4-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	176(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	je	.LBB1_8
# %bb.5:                                # %ok.4
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	movq	184(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB1_8
# %bb.6:                                # %ok.6
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	176(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	je	.LBB1_8
# %bb.7:                                # %ok.5
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_8:                                # %abort
	.cfi_def_cfa_offset 208
	callq	abort@PLT
.Lfunc_end1:
	.size	Main.main, .Lfunc_end1-Main.main
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
	je	.LBB2_2
# %bb.1:                                # %okay
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end2:
	.size	Main_new, .Lfunc_end2-Main_new
	.cfi_endproc
                                        # -- End function
	.globl	A.getAnswerToAll                # -- Begin function A.getAnswerToAll
	.p2align	4, 0x90
	.type	A.getAnswerToAll,@function
A.getAnswerToAll:                       # @A.getAnswerToAll
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, %eax
	retq
.Lfunc_end3:
	.size	A.getAnswerToAll, .Lfunc_end3-A.getAnswerToAll
	.cfi_endproc
                                        # -- End function
	.globl	A.setAnswerToAll                # -- Begin function A.setAnswerToAll
	.p2align	4, 0x90
	.type	A.setAnswerToAll,@function
A.setAnswerToAll:                       # @A.setAnswerToAll
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movl	%ecx, %edx
	movq	%r8, -8(%rsp)
	movl	%edx, -12(%rsp)
	movl	-12(%rsp), %ecx
	movq	-8(%rsp), %rdx
	movl	%ecx, 8(%rdx)
	movq	-8(%rsp), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end4:
	.size	A.setAnswerToAll, .Lfunc_end4-A.setAnswerToAll
	.cfi_endproc
                                        # -- End function
	.globl	A_new                           # -- Begin function A_new
	.p2align	4, 0x90
	.type	A_new,@function
A_new:                                  # @A_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB5_2
# %bb.1:                                # %okay
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movl	$0, 8(%rdx)
	movl	$42, 8(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end5:
	.size	A_new, .Lfunc_end5-A_new
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
	.long	0+8
	.quad	str.Main
	.quad	Main_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Main.main
	.size	_Main_vtable_prototype, 88

	.type	str.A,@object                   # @str.A
str.A:
	.asciz	"A"
	.size	str.A, 2

	.type	_A_vtable_prototype,@object     # @_A_vtable_prototype
	.globl	_A_vtable_prototype
	.p2align	4
_A_vtable_prototype:
	.long	6                               # 0x6
	.long	0+16
	.quad	str.A
	.quad	A_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	A.getAnswerToAll
	.quad	A.setAnswerToAll
	.size	_A_vtable_prototype, 64

	.type	str.2,@object                   # @str.2
str.2:
	.asciz	"<basic class>"
	.size	str.2, 14

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	" "
	.size	str.1, 2

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"copy_o2.cl"
	.size	str.0, 11

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
