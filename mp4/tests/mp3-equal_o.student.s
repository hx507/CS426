	.text
	.file	"mp3-equal_o.ll"
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
	.globl	Main.func                       # -- Begin function Main.func
	.p2align	4, 0x90
	.type	Main.func,@function
Main.func:                              # @Main.func
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	Main.func, .Lfunc_end1-Main.func
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, %rax
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	je	.LBB2_7
# %bb.1:                                # %ok.0
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	testb	$1, %cl
	movb	%cl, 7(%rsp)                    # 1-byte Spill
	je	.LBB2_4
# %bb.2:                                # %true.0
	movq	8(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	je	.LBB2_7
# %bb.3:                                # %ok.1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	jmp	.LBB2_6
.LBB2_4:                                # %false.0
	movq	8(%rsp), %rax
	testq	%rax, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	je	.LBB2_7
# %bb.5:                                # %ok.2
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 40(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
.LBB2_6:                                # %end.0
	movq	8(%rsp), %rcx
	movq	%rcx, %rax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_7:                                # %abort
	.cfi_def_cfa_offset 112
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB3_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
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
	.quad	Main.func
	.quad	Main.main
	.size	_Main_vtable_prototype, 96

	.type	str.3,@object                   # @str.3
str.3:
	.asciz	"<basic class>"
	.size	str.3, 14

	.type	String.3,@object                # @String.3
	.globl	String.3
	.p2align	3
String.3:
	.quad	_String_vtable_prototype
	.quad	str.3
	.size	String.3, 16

	.type	str.2,@object                   # @str.2
str.2:
	.asciz	"not ok"
	.size	str.2, 7

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"ok"
	.size	str.1, 3

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"equal_o.cl"
	.size	str.0, 11

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
