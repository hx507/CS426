	.text
	.file	"mp3-checkeq.ll"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	Main_new@PLT
	movq	%rax, %rdi
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, (%rsp)
	cmpq	8(%rdi), %rdi
	je	.LBB1_1
# %bb.3:                                # %false.0
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.4:                                # %ok.1
	movq	(%rdi), %rax
	movq	String.2@GOTPCREL(%rip), %rsi
	jmp	.LBB1_5
.LBB1_1:                                # %true.0
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.2:                                # %ok.0
	movq	(%rdi), %rax
	movq	String.1@GOTPCREL(%rip), %rsi
.LBB1_5:                                # %end.0
	callq	*48(%rax)
	movq	%rax, 32(%rsp)
	movb	$1, %al
	testb	%al, %al
	je	.LBB1_6
# %bb.8:                                # %false.1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.9:                                # %ok.3
	movq	(%rdi), %rax
	movq	String.4@GOTPCREL(%rip), %rsi
	jmp	.LBB1_10
.LBB1_6:                                # %true.1
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.7:                                # %ok.2
	movq	(%rdi), %rax
	movq	String.3@GOTPCREL(%rip), %rsi
.LBB1_10:                               # %end.1
	callq	*48(%rax)
	movq	%rax, 24(%rsp)
	movb	$1, %al
	testb	%al, %al
	je	.LBB1_11
# %bb.13:                               # %false.2
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.14:                               # %ok.5
	movq	(%rdi), %rax
	movq	String.6@GOTPCREL(%rip), %rsi
	jmp	.LBB1_15
.LBB1_11:                               # %true.2
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.12:                               # %ok.4
	movq	(%rdi), %rax
	movq	String.5@GOTPCREL(%rip), %rsi
.LBB1_15:                               # %end.2
	callq	*48(%rax)
	movq	%rax, 16(%rsp)
	movq	String.7@GOTPCREL(%rip), %rax
	movq	8(%rax), %rdi
	movq	String.8@GOTPCREL(%rip), %rax
	movq	8(%rax), %rsi
	callq	strcmp@PLT
	testl	%eax, %eax
	je	.LBB1_16
# %bb.18:                               # %false.3
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.19:                               # %ok.7
	movq	(%rdi), %rax
	movq	String.10@GOTPCREL(%rip), %rsi
	jmp	.LBB1_20
.LBB1_16:                               # %true.3
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_21
# %bb.17:                               # %ok.6
	movq	(%rdi), %rax
	movq	String.9@GOTPCREL(%rip), %rsi
.LBB1_20:                               # %end.3
	callq	*48(%rax)
	movq	%rax, 8(%rsp)
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_21:                               # %abort
	.cfi_def_cfa_offset 48
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	movq	$0, 8(%rax)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end2:
	.size	Main_new, .Lfunc_end2-Main_new
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
	.quad	Main.main
	.size	_Main_vtable_prototype, 88

	.type	str.11,@object                  # @str.11
str.11:
	.asciz	"<basic class>"
	.size	str.11, 14

	.type	String.11,@object               # @String.11
	.globl	String.11
	.p2align	3
String.11:
	.quad	_String_vtable_prototype
	.quad	str.11
	.size	String.11, 16

	.type	str.10,@object                  # @str.10
str.10:
	.asciz	"\"abc\" != \"bbc\"\n"
	.size	str.10, 16

	.type	String.10,@object               # @String.10
	.globl	String.10
	.p2align	3
String.10:
	.quad	_String_vtable_prototype
	.quad	str.10
	.size	String.10, 16

	.type	str.9,@object                   # @str.9
str.9:
	.asciz	"\"abc\" = \"bbc\"\n"
	.size	str.9, 15

	.type	String.9,@object                # @String.9
	.globl	String.9
	.p2align	3
String.9:
	.quad	_String_vtable_prototype
	.quad	str.9
	.size	String.9, 16

	.type	str.8,@object                   # @str.8
str.8:
	.asciz	"bbc"
	.size	str.8, 4

	.type	String.8,@object                # @String.8
	.globl	String.8
	.p2align	3
String.8:
	.quad	_String_vtable_prototype
	.quad	str.8
	.size	String.8, 16

	.type	str.7,@object                   # @str.7
str.7:
	.asciz	"abc"
	.size	str.7, 4

	.type	String.7,@object                # @String.7
	.globl	String.7
	.p2align	3
String.7:
	.quad	_String_vtable_prototype
	.quad	str.7
	.size	String.7, 16

	.type	str.6,@object                   # @str.6
str.6:
	.asciz	"true != false\n"
	.size	str.6, 15

	.type	String.6,@object                # @String.6
	.globl	String.6
	.p2align	3
String.6:
	.quad	_String_vtable_prototype
	.quad	str.6
	.size	String.6, 16

	.type	str.5,@object                   # @str.5
str.5:
	.asciz	"true = false\n"
	.size	str.5, 14

	.type	String.5,@object                # @String.5
	.globl	String.5
	.p2align	3
String.5:
	.quad	_String_vtable_prototype
	.quad	str.5
	.size	String.5, 16

	.type	str.4,@object                   # @str.4
str.4:
	.asciz	"1 != 0\n"
	.size	str.4, 8

	.type	String.4,@object                # @String.4
	.globl	String.4
	.p2align	3
String.4:
	.quad	_String_vtable_prototype
	.quad	str.4
	.size	String.4, 16

	.type	str.3,@object                   # @str.3
str.3:
	.asciz	"1 = 0\n"
	.size	str.3, 7

	.type	String.3,@object                # @String.3
	.globl	String.3
	.p2align	3
String.3:
	.quad	_String_vtable_prototype
	.quad	str.3
	.size	String.3, 16

	.type	str.2,@object                   # @str.2
str.2:
	.asciz	"self != obj\n"
	.size	str.2, 13

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"self = obj\n"
	.size	str.1, 12

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"checkeq.cl"
	.size	str.0, 11

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
