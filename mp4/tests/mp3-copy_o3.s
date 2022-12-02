	.text
	.file	"mp3-copy_o3.ll"
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
	subq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 400
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 320(%rsp)
	movq	$0, 384(%rsp)
	movq	$0, 376(%rsp)
	movq	%rcx, 312(%rsp)                 # 8-byte Spill
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	callq	AA_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 384(%rsp)
	movq	384(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	je	.LBB1_29
# %bb.1:                                # %ok.0
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 276(%rsp)                 # 4-byte Spill
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
# %bb.2:                                # %case.hdr.0
	jmp	.LBB1_3
.LBB1_3:                                # %case.7.0
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB1_7
# %bb.4:                                # %src_gte_br.7.0
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jg	.LBB1_7
# %bb.5:                                # %src_lte_mc.7.0
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 360(%rsp)
	movq	360(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	je	.LBB1_29
# %bb.6:                                # %ok.1
	movq	256(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movl	$42, %r8d
	movq	%rcx, %rdi
	movl	%r8d, %esi
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	movl	%r8d, 244(%rsp)                 # 4-byte Spill
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 228(%rsp)                 # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	228(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movl	%edx, 228(%rsp)                 # 4-byte Spill
	callq	Int_init@PLT
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, %r8
	movq	%r8, 368(%rsp)
	movq	%r8, 208(%rsp)                  # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	jmp	.LBB1_13
.LBB1_7:                                # %br_exit.7.0
	jmp	.LBB1_8
.LBB1_8:                                # %case.0.0
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	jl	.LBB1_12
# %bb.9:                                # %src_gte_br.0.0
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jg	.LBB1_12
# %bb.10:                               # %src_lte_mc.0.0
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 352(%rsp)
	movq	320(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	je	.LBB1_29
# %bb.11:                               # %ok.2
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %r8
	movq	%r8, 368(%rsp)
	movq	%r8, 160(%rsp)                  # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	jmp	.LBB1_13
.LBB1_12:                               # %br_exit.0.0
	jmp	.LBB1_29
.LBB1_13:                               # %case.exit.0
	movq	384(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	je	.LBB1_29
# %bb.14:                               # %ok.3
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	callq	*40(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 376(%rsp)
	movq	376(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	je	.LBB1_29
# %bb.15:                               # %ok.4
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 108(%rsp)                 # 4-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
# %bb.16:                               # %case.hdr.1
	jmp	.LBB1_17
.LBB1_17:                               # %case.7.1
	movl	108(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB1_22
# %bb.18:                               # %src_gte_br.7.1
	movl	108(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jg	.LBB1_22
# %bb.19:                               # %src_lte_mc.7.1
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 336(%rsp)
	movq	336(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	je	.LBB1_29
# %bb.20:                               # %ok.6
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movl	%eax, %ecx
	movq	320(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	je	.LBB1_29
# %bb.21:                               # %ok.5
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	60(%rsp), %r8d                  # 4-byte Reload
	movl	%r8d, %esi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%r8d, 60(%rsp)                  # 4-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 344(%rsp)
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB1_28
.LBB1_22:                               # %br_exit.7.1
	jmp	.LBB1_23
.LBB1_23:                               # %case.0.1
	movl	108(%rsp), %eax                 # 4-byte Reload
	cmpl	$0, %eax
	jl	.LBB1_27
# %bb.24:                               # %src_gte_br.0.1
	movl	108(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jg	.LBB1_27
# %bb.25:                               # %src_lte_mc.0.1
	movq	120(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 328(%rsp)
	movq	320(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB1_29
# %bb.26:                               # %ok.7
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*48(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 344(%rsp)
	movq	%rcx, (%rsp)                    # 8-byte Spill
	jmp	.LBB1_28
.LBB1_27:                               # %br_exit.0.1
	jmp	.LBB1_29
.LBB1_28:                               # %case.exit.1
	movq	320(%rsp), %rcx
	movq	%rcx, %rax
	addq	$392, %rsp                      # imm = 0x188
	.cfi_def_cfa_offset 8
	retq
.LBB1_29:                               # %abort
	.cfi_def_cfa_offset 400
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
	je	.LBB3_2
# %bb.1:                                # %okay
	movq	_A_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movl	$0, 8(%rdx)
	movb	$0, 12(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movl	$0, 24(%rdx)
	movl	$0, 8(%rdx)
	movb	$0, 12(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movl	$0, 24(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end3:
	.size	A_new, .Lfunc_end3-A_new
	.cfi_endproc
                                        # -- End function
	.globl	AA.set                          # -- Begin function AA.set
	.p2align	4, 0x90
	.type	AA.set,@function
AA.set:                                 # @AA.set
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
	movl	%ecx, 32(%rdx)
	movl	%ecx, %eax
	retq
.Lfunc_end4:
	.size	AA.set, .Lfunc_end4-AA.set
	.cfi_endproc
                                        # -- End function
	.globl	AA.get                          # -- Begin function AA.get
	.p2align	4, 0x90
	.type	AA.get,@function
AA.get:                                 # @AA.get
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movl	32(%rcx), %edx
	movl	%edx, %eax
	retq
.Lfunc_end5:
	.size	AA.get, .Lfunc_end5-AA.get
	.cfi_endproc
                                        # -- End function
	.globl	AA_new                          # -- Begin function AA_new
	.p2align	4, 0x90
	.type	AA_new,@function
AA_new:                                 # @AA_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_AA_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_AA_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movl	$0, 8(%rdx)
	movb	$0, 12(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movl	$0, 24(%rdx)
	movb	$0, 28(%rdx)
	movl	$0, 32(%rdx)
	movl	$0, 8(%rdx)
	movb	$0, 12(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movl	$0, 24(%rdx)
	movb	$0, 28(%rdx)
	movl	$0, 32(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end6:
	.size	AA_new, .Lfunc_end6-AA_new
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
	.long	0+32
	.quad	str.A
	.quad	A_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_A_vtable_prototype, 48

	.type	str.AA,@object                  # @str.AA
str.AA:
	.asciz	"AA"
	.size	str.AA, 3

	.type	_AA_vtable_prototype,@object    # @_AA_vtable_prototype
	.globl	_AA_vtable_prototype
	.p2align	4
_AA_vtable_prototype:
	.long	7                               # 0x7
	.long	0+40
	.quad	str.AA
	.quad	AA_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	AA.set
	.quad	AA.get
	.size	_AA_vtable_prototype, 64

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
	.asciz	"Error2\n"
	.size	str.2, 8

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"Error1\n"
	.size	str.1, 8

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"copy_o3.cl"
	.size	str.0, 11

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
