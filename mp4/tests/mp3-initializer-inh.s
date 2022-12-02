	.text
	.file	"mp3-initializer-inh.ll"
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
	.globl	A.f                             # -- Begin function A.f
	.p2align	4, 0x90
	.type	A.f,@function
A.f:                                    # @A.f
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
	je	.LBB1_4
# %bb.1:                                # %ok.0
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
	movq	80(%rsp), %rcx
	movl	16(%rcx), %edx
	movq	80(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB1_4
# %bb.2:                                # %ok.1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	28(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	80(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB1_4
# %bb.3:                                # %ok.2
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:                                # %abort
	.cfi_def_cfa_offset 96
	callq	abort@PLT
.Lfunc_end1:
	.size	A.f, .Lfunc_end1-A.f
	.cfi_endproc
                                        # -- End function
	.globl	A_new                           # -- Begin function A_new
	.p2align	4, 0x90
	.type	A_new,@function
A_new:                                  # @A_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movl	%edx, 52(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB2_3
# %bb.1:                                # %okay
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 64(%rsp)
	movq	$0, 8(%rcx)
	movl	$0, 16(%rcx)
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	64(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB2_3
# %bb.2:                                # %ok.3
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movq	%rax, %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	$12, 16(%rcx)
	movq	%rcx, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:                                # %abort
	.cfi_def_cfa_offset 80
	callq	abort@PLT
.Lfunc_end2:
	.size	A_new, .Lfunc_end2-A_new
	.cfi_endproc
                                        # -- End function
	.globl	B.f                             # -- Begin function B.f
	.p2align	4, 0x90
	.type	B.f,@function
B.f:                                    # @B.f
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
	je	.LBB3_4
# %bb.1:                                # %ok.0
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.4@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	movq	80(%rsp), %rcx
	movl	20(%rcx), %edx
	movq	80(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB3_4
# %bb.2:                                # %ok.1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	28(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	80(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB3_4
# %bb.3:                                # %ok.2
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_4:                                # %abort
	.cfi_def_cfa_offset 96
	callq	abort@PLT
.Lfunc_end3:
	.size	B.f, .Lfunc_end3-B.f
	.cfi_endproc
                                        # -- End function
	.globl	B_new                           # -- Begin function B_new
	.p2align	4, 0x90
	.type	B_new,@function
B_new:                                  # @B_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movl	%edx, 132(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	je	.LBB4_6
# %bb.1:                                # %okay
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rax
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 144(%rsp)
	movq	$0, 8(%rcx)
	movl	$0, 16(%rcx)
	movl	$0, 20(%rcx)
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	144(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	je	.LBB4_6
# %bb.2:                                # %ok.3
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movq	%rax, %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movl	$12, 16(%rsi)
	movq	%rsi, %r8
	addq	$20, %r8
	movq	144(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	je	.LBB4_6
# %bb.3:                                # %ok.4
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.3@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	movq	144(%rsp), %rcx
	movl	16(%rcx), %edx
	movq	144(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB4_6
# %bb.4:                                # %ok.5
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	28(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	%r8d, 28(%rsp)                  # 4-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	144(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB4_6
# %bb.5:                                # %ok.6
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movl	$13, (%rcx)
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_6:                                # %abort
	.cfi_def_cfa_offset 160
	callq	abort@PLT
.Lfunc_end4:
	.size	B_new, .Lfunc_end4-B_new
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
	je	.LBB5_3
# %bb.1:                                # %ok.0
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.5@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	callq	A_new@PLT
                                        # kill: def $rcx killed $rax
	movq	48(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB5_3
# %bb.2:                                # %ok.1
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.6@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	callq	B_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_3:                                # %abort
	.cfi_def_cfa_offset 64
	callq	abort@PLT
.Lfunc_end5:
	.size	Main.main, .Lfunc_end5-Main.main
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
	je	.LBB6_2
# %bb.1:                                # %okay
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end6:
	.size	Main_new, .Lfunc_end6-Main_new
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

	.type	str.A,@object                   # @str.A
str.A:
	.asciz	"A"
	.size	str.A, 2

	.type	_A_vtable_prototype,@object     # @_A_vtable_prototype
	.globl	_A_vtable_prototype
	.p2align	4
_A_vtable_prototype:
	.long	5                               # 0x5
	.long	0+24
	.quad	str.A
	.quad	A_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	A.f
	.size	_A_vtable_prototype, 88

	.type	str.B,@object                   # @str.B
str.B:
	.asciz	"B"
	.size	str.B, 2

	.type	_B_vtable_prototype,@object     # @_B_vtable_prototype
	.globl	_B_vtable_prototype
	.p2align	4
_B_vtable_prototype:
	.long	6                               # 0x6
	.long	0+24
	.quad	str.B
	.quad	B_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	B.f
	.size	_B_vtable_prototype, 88

	.type	str.Main,@object                # @str.Main
str.Main:
	.asciz	"Main"
	.size	str.Main, 5

	.type	_Main_vtable_prototype,@object  # @_Main_vtable_prototype
	.globl	_Main_vtable_prototype
	.p2align	4
_Main_vtable_prototype:
	.long	7                               # 0x7
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

	.type	str.7,@object                   # @str.7
str.7:
	.asciz	"<basic class>"
	.size	str.7, 14

	.type	String.7,@object                # @String.7
	.globl	String.7
	.p2align	3
String.7:
	.quad	_String_vtable_prototype
	.quad	str.7
	.size	String.7, 16

	.type	str.6,@object                   # @str.6
str.6:
	.asciz	"new B\n"
	.size	str.6, 7

	.type	String.6,@object                # @String.6
	.globl	String.6
	.p2align	3
String.6:
	.quad	_String_vtable_prototype
	.quad	str.6
	.size	String.6, 16

	.type	str.5,@object                   # @str.5
str.5:
	.asciz	"new A\n"
	.size	str.5, 7

	.type	String.5,@object                # @String.5
	.globl	String.5
	.p2align	3
String.5:
	.quad	_String_vtable_prototype
	.quad	str.5
	.size	String.5, 16

	.type	str.4,@object                   # @str.4
str.4:
	.asciz	"B.f: y = "
	.size	str.4, 10

	.type	String.4,@object                # @String.4
	.globl	String.4
	.p2align	3
String.4:
	.quad	_String_vtable_prototype
	.quad	str.4
	.size	String.4, 16

	.type	str.3,@object                   # @str.3
	.p2align	4
str.3:
	.asciz	"initializing B.y. here x = "
	.size	str.3, 28

	.type	String.3,@object                # @String.3
	.globl	String.3
	.p2align	3
String.3:
	.quad	_String_vtable_prototype
	.quad	str.3
	.size	String.3, 16

	.type	str.2,@object                   # @str.2
str.2:
	.asciz	"\n"
	.size	str.2, 2

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"A.f: x = "
	.size	str.1, 10

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
	.asciz	"initializer-inh.cl"
	.size	str.0, 19

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
