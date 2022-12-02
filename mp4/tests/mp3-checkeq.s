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
	subq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 416
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 368(%rsp)
	movq	368(%rsp), %rdx
	movq	368(%rsp), %rsi
	movq	8(%rsi), %r8
	movq	%rdx, %r9
	movq	%r8, %r10
	cmpq	%r10, %r9
	movq	%rax, 360(%rsp)                 # 8-byte Spill
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	movq	%r10, 344(%rsp)                 # 8-byte Spill
	movq	%r9, 336(%rsp)                  # 8-byte Spill
	movq	%r8, 328(%rsp)                  # 8-byte Spill
	movq	%rsi, 320(%rsp)                 # 8-byte Spill
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	jne	.LBB1_3
# %bb.1:                                # %true.0
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 304(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.2:                                # %ok.0
	movq	304(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	movq	%r8, 296(%rsp)                  # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 400(%rsp)
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	jmp	.LBB1_5
.LBB1_3:                                # %false.0
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 272(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.4:                                # %ok.1
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	movq	%r8, 264(%rsp)                  # 8-byte Spill
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 400(%rsp)
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
.LBB1_5:                                # %end.0
	movl	$1, %eax
	cmpl	$0, %eax
	movl	%eax, 244(%rsp)                 # 4-byte Spill
	jne	.LBB1_8
# %bb.6:                                # %true.1
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.7:                                # %ok.2
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.3@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	movq	%r8, 224(%rsp)                  # 8-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 392(%rsp)
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	jmp	.LBB1_10
.LBB1_8:                                # %false.1
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.9:                                # %ok.3
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.4@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%r8, 192(%rsp)                  # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 392(%rsp)
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
.LBB1_10:                               # %end.1
	movb	$1, %al
	testb	%al, %al
	movb	%al, 175(%rsp)                  # 1-byte Spill
	jne	.LBB1_13
	jmp	.LBB1_11
.LBB1_11:                               # %true.2
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.12:                               # %ok.4
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.5@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 384(%rsp)
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB1_15
.LBB1_13:                               # %false.2
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	je	.LBB1_21
# %bb.14:                               # %ok.5
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.6@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 384(%rsp)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
.LBB1_15:                               # %end.2
	movq	String.7@GOTPCREL(%rip), %rcx
	movq	8(%rcx), %rdx
	movq	String.8@GOTPCREL(%rip), %r8
	movq	8(%r8), %r9
	movq	%rdx, %rdi
	movq	%r9, %rsi
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%r9, 88(%rsp)                   # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	strcmp@PLT
	movl	%eax, %ecx
	movl	%ecx, %edx
	cmpl	$0, %edx
	movl	%edx, 68(%rsp)                  # 4-byte Spill
	movl	%ecx, 64(%rsp)                  # 4-byte Spill
	jne	.LBB1_18
# %bb.16:                               # %true.3
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	je	.LBB1_21
# %bb.17:                               # %ok.6
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.9@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 376(%rsp)
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_20
.LBB1_18:                               # %false.3
	movq	368(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_21
# %bb.19:                               # %ok.7
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.10@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 376(%rsp)
	movq	%rcx, (%rsp)                    # 8-byte Spill
.LBB1_20:                               # %end.3
	movq	376(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$408, %rsp                      # imm = 0x198
	.cfi_def_cfa_offset 8
	retq
.LBB1_21:                               # %abort
	.cfi_def_cfa_offset 416
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
	movq	$0, 8(%rdx)
	movq	$0, 8(%rdx)
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
