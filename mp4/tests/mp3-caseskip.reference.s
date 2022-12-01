	.text
	.file	"mp3-caseskip.ll"
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	callq	B_new@PLT
	movq	%rax, 56(%rsp)
	movq	$0, 48(%rsp)
	movl	$0, 20(%rsp)
	testq	%rax, %rax
	je	.LBB1_12
# %bb.1:                                # %ok.1
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	cmpl	$10, %ecx
	jl	.LBB1_4
# %bb.2:                                # %src_gte_br.10.0
	jle	.LBB1_3
.LBB1_4:                                # %br_exit.10.0
	cmpl	$8, %ecx
	jl	.LBB1_7
# %bb.5:                                # %src_gte_br.8.0
	jle	.LBB1_6
.LBB1_7:                                # %br_exit.8.0
	cmpl	$6, %ecx
	jl	.LBB1_12
# %bb.8:                                # %src_gte_br.6.0
	cmpl	$11, %ecx
	jg	.LBB1_12
# %bb.9:                                # %src_lte_mc.6.0
	movq	%rax, 40(%rsp)
	callq	Int_new@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$2, %esi
	jmp	.LBB1_10
.LBB1_3:                                # %src_lte_mc.10.0
	movq	%rax, 24(%rsp)
	callq	Int_new@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$17, %esi
	jmp	.LBB1_10
.LBB1_6:                                # %src_lte_mc.8.0
	movq	%rax, 32(%rsp)
	callq	Int_new@PLT
	movq	%rax, %rbx
	movq	%rax, %rdi
	movl	$3, %esi
.LBB1_10:                               # %case.exit.0
	callq	Int_init@PLT
	movq	%rbx, (%rsp)
	movq	8(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB1_12
# %bb.11:                               # %ok.0
	movq	(%rsp), %rax
	movq	(%rdi), %rcx
	movl	8(%rax), %esi
	callq	*56(%rcx)
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_12:                               # %abort
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
	.globl	A_new                           # -- Begin function A_new
	.p2align	4, 0x90
	.type	A_new,@function
A_new:                                  # @A_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB3_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end3:
	.size	A_new, .Lfunc_end3-A_new
	.cfi_endproc
                                        # -- End function
	.globl	B_new                           # -- Begin function B_new
	.p2align	4, 0x90
	.type	B_new,@function
B_new:                                  # @B_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end4:
	.size	B_new, .Lfunc_end4-B_new
	.cfi_endproc
                                        # -- End function
	.globl	B1_new                          # -- Begin function B1_new
	.p2align	4, 0x90
	.type	B1_new,@function
B1_new:                                 # @B1_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_B1_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB5_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end5:
	.size	B1_new, .Lfunc_end5-B1_new
	.cfi_endproc
                                        # -- End function
	.globl	B2_new                          # -- Begin function B2_new
	.p2align	4, 0x90
	.type	B2_new,@function
B2_new:                                 # @B2_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_B2_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB6_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end6:
	.size	B2_new, .Lfunc_end6-B2_new
	.cfi_endproc
                                        # -- End function
	.globl	E_new                           # -- Begin function E_new
	.p2align	4, 0x90
	.type	E_new,@function
E_new:                                  # @E_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_E_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB7_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end7:
	.size	E_new, .Lfunc_end7-E_new
	.cfi_endproc
                                        # -- End function
	.globl	F_new                           # -- Begin function F_new
	.p2align	4, 0x90
	.type	F_new,@function
F_new:                                  # @F_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_F_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB8_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB8_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end8:
	.size	F_new, .Lfunc_end8-F_new
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
	.long	0+8
	.quad	str.A
	.quad	A_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_A_vtable_prototype, 48

	.type	str.B,@object                   # @str.B
str.B:
	.asciz	"B"
	.size	str.B, 2

	.type	_B_vtable_prototype,@object     # @_B_vtable_prototype
	.globl	_B_vtable_prototype
	.p2align	4
_B_vtable_prototype:
	.long	7                               # 0x7
	.long	0+8
	.quad	str.B
	.quad	B_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_B_vtable_prototype, 48

	.type	str.B1,@object                  # @str.B1
str.B1:
	.asciz	"B1"
	.size	str.B1, 3

	.type	_B1_vtable_prototype,@object    # @_B1_vtable_prototype
	.globl	_B1_vtable_prototype
	.p2align	4
_B1_vtable_prototype:
	.long	8                               # 0x8
	.long	0+8
	.quad	str.B1
	.quad	B1_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_B1_vtable_prototype, 48

	.type	str.B2,@object                  # @str.B2
str.B2:
	.asciz	"B2"
	.size	str.B2, 3

	.type	_B2_vtable_prototype,@object    # @_B2_vtable_prototype
	.globl	_B2_vtable_prototype
	.p2align	4
_B2_vtable_prototype:
	.long	9                               # 0x9
	.long	0+8
	.quad	str.B2
	.quad	B2_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_B2_vtable_prototype, 48

	.type	str.E,@object                   # @str.E
str.E:
	.asciz	"E"
	.size	str.E, 2

	.type	_E_vtable_prototype,@object     # @_E_vtable_prototype
	.globl	_E_vtable_prototype
	.p2align	4
_E_vtable_prototype:
	.long	10                              # 0xa
	.long	0+8
	.quad	str.E
	.quad	E_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_E_vtable_prototype, 48

	.type	str.F,@object                   # @str.F
str.F:
	.asciz	"F"
	.size	str.F, 2

	.type	_F_vtable_prototype,@object     # @_F_vtable_prototype
	.globl	_F_vtable_prototype
	.p2align	4
_F_vtable_prototype:
	.long	11                              # 0xb
	.long	0+8
	.quad	str.F
	.quad	F_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_F_vtable_prototype, 48

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
	.asciz	"caseskip.cl"
	.size	str.0, 12

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
