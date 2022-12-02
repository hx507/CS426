	.text
	.file	"mp3-shadow-formal-case.ll"
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
	.globl	Main.method                     # -- Begin function Main.method
	.p2align	4, 0x90
	.type	Main.method,@function
Main.method:                            # @Main.method
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rax, %r8
	movq	%rdx, 112(%rsp)
	movq	%r8, 104(%rsp)
	movq	String.1@GOTPCREL(%rip), %r9
	cmpq	$0, %r9
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	je	.LBB1_9
# %bb.1:                                # %ok.0
	movq	String.1@GOTPCREL(%rip), %rax
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 60(%rsp)                  # 4-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
# %bb.2:                                # %case.hdr.0
	jmp	.LBB1_3
.LBB1_3:                                # %case.3.0
	movl	60(%rsp), %eax                  # 4-byte Reload
	cmpl	$3, %eax
	jl	.LBB1_7
# %bb.4:                                # %src_gte_br.3.0
	movl	60(%rsp), %eax                  # 4-byte Reload
	cmpl	$3, %eax
	jg	.LBB1_7
# %bb.5:                                # %src_lte_mc.3.0
	movq	String.1@GOTPCREL(%rip), %rax
	movq	%rax, 120(%rsp)
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	je	.LBB1_9
# %bb.6:                                # %ok.1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 128(%rsp)
	movq	%rcx, (%rsp)                    # 8-byte Spill
	jmp	.LBB1_8
.LBB1_7:                                # %br_exit.3.0
	jmp	.LBB1_9
.LBB1_8:                                # %case.exit.0
	movq	128(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_9:                                # %abort
	.cfi_def_cfa_offset 144
	callq	abort@PLT
.Lfunc_end1:
	.size	Main.method, .Lfunc_end1-Main.method
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	je	.LBB2_3
# %bb.1:                                # %ok.2
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*80(%rdx)
                                        # kill: def $rcx killed $rax
	movq	48(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB2_3
# %bb.2:                                # %ok.3
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.3@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:                                # %abort
	.cfi_def_cfa_offset 64
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
	.quad	Main.method
	.quad	Main.main
	.size	_Main_vtable_prototype, 96

	.type	str.4,@object                   # @str.4
str.4:
	.asciz	"<basic class>"
	.size	str.4, 14

	.type	String.4,@object                # @String.4
	.globl	String.4
	.p2align	3
String.4:
	.quad	_String_vtable_prototype
	.quad	str.4
	.size	String.4, 16

	.type	str.3,@object                   # @str.3
str.3:
	.asciz	"\n"
	.size	str.3, 2

	.type	String.3,@object                # @String.3
	.globl	String.3
	.p2align	3
String.3:
	.quad	_String_vtable_prototype
	.quad	str.3
	.size	String.3, 16

	.type	str.2,@object                   # @str.2
str.2:
	.asciz	"bad"
	.size	str.2, 4

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"good"
	.size	str.1, 5

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
	.asciz	"shadow-formal-case.cl"
	.size	str.0, 22

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
