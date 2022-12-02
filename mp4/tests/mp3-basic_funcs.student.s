	.text
	.file	"mp3-basic_funcs.ll"
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, %rax
	movq	%rax, (%rsp)
	testq	%rax, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	je	.LBB1_13
# %bb.1:                                # %ok.1
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	callq	*32(%rdx)
	movq	%rax, %rcx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.2:                                # %ok.0
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	104(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 104(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.3:                                # %ok.2
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	$879, %esi                      # imm = 0x36F
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.4:                                # %ok.5
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	callq	*32(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.5:                                # %ok.4
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.6:                                # %ok.3
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.7:                                # %ok.8
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	callq	*32(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.8:                                # %ok.7
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movl	%ecx, 12(%rsp)                  # 4-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.9:                                # %ok.6
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	12(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movl	%r8d, 12(%rsp)                  # 4-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.10:                               # %ok.11
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	*32(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.11:                               # %ok.10
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	%rcx, %rdi
	movl	$2, %esi
	movl	$2, %edx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	callq	*64(%r8)
	movq	%rax, %rcx
	movq	(%rsp), %r8
	testq	%r8, %r8
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	je	.LBB1_13
# %bb.12:                               # %ok.9
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rsi
	callq	*48(%rdx)
	movq	(%rsp), %rcx
	movq	%rcx, %rax
	addq	$232, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_13:                               # %abort
	.cfi_def_cfa_offset 240
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
	.asciz	"Frugel"
	.size	str.1, 7

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"basic_funcs.cl"
	.size	str.0, 15

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
