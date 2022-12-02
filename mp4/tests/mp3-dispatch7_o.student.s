	.text
	.file	"mp3-dispatch7_o.ll"
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
	xorl	%eax, %eax
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_4
# %bb.1:                                # %ok.2
	movq	_Foo_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	*48(%rcx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB1_4
# %bb.2:                                # %ok.1
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	$1, %esi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movl	%eax, %ecx
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	je	.LBB1_4
# %bb.3:                                # %ok.0
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	12(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:                                # %abort
	.cfi_def_cfa_offset 80
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB2_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
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
	.globl	Foo.a                           # -- Begin function Foo.a
	.p2align	4, 0x90
	.type	Foo.a,@function
Foo.a:                                  # @Foo.a
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	movq	%rcx, %rax
	retq
.Lfunc_end3:
	.size	Foo.a, .Lfunc_end3-Foo.a
	.cfi_endproc
                                        # -- End function
	.globl	Foo_new                         # -- Begin function Foo_new
	.p2align	4, 0x90
	.type	Foo_new,@function
Foo_new:                                # @Foo_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Foo_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end4:
	.size	Foo_new, .Lfunc_end4-Foo_new
	.cfi_endproc
                                        # -- End function
	.globl	Bar.a                           # -- Begin function Bar.a
	.p2align	4, 0x90
	.type	Bar.a,@function
Bar.a:                                  # @Bar.a
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	movq	%rcx, %rax
	retq
.Lfunc_end5:
	.size	Bar.a, .Lfunc_end5-Bar.a
	.cfi_endproc
                                        # -- End function
	.globl	Bar.b                           # -- Begin function Bar.b
	.p2align	4, 0x90
	.type	Bar.b,@function
Bar.b:                                  # @Bar.b
	.cfi_startproc
# %bb.0:                                # %entry
	movl	%esi, %ecx
	movq	%rdi, %rdx
	movq	%rdx, -8(%rsp)
	movl	%ecx, -12(%rsp)
	movl	$1, %eax
	retq
.Lfunc_end6:
	.size	Bar.b, .Lfunc_end6-Bar.b
	.cfi_endproc
                                        # -- End function
	.globl	Bar_new                         # -- Begin function Bar_new
	.p2align	4, 0x90
	.type	Bar_new,@function
Bar_new:                                # @Bar_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Bar_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB7_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end7:
	.size	Bar_new, .Lfunc_end7-Bar_new
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

	.type	str.Foo,@object                 # @str.Foo
str.Foo:
	.asciz	"Foo"
	.size	str.Foo, 4

	.type	_Foo_vtable_prototype,@object   # @_Foo_vtable_prototype
	.globl	_Foo_vtable_prototype
	.p2align	4
_Foo_vtable_prototype:
	.long	6                               # 0x6
	.long	0+8
	.quad	str.Foo
	.quad	Foo_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Foo.a
	.size	_Foo_vtable_prototype, 56

	.type	str.Bar,@object                 # @str.Bar
str.Bar:
	.asciz	"Bar"
	.size	str.Bar, 4

	.type	_Bar_vtable_prototype,@object   # @_Bar_vtable_prototype
	.globl	_Bar_vtable_prototype
	.p2align	4
_Bar_vtable_prototype:
	.long	7                               # 0x7
	.long	0+8
	.quad	str.Bar
	.quad	Bar_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Bar.a
	.quad	Bar.b
	.size	_Bar_vtable_prototype, 64

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
str.0:
	.asciz	"dispatch7_o.cl"
	.size	str.0, 15

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
