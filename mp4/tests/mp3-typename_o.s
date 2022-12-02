	.text
	.file	"mp3-typename_o.ll"
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
	.globl	Main.func                       # -- Begin function Main.func
	.p2align	4, 0x90
	.type	Main.func,@function
Main.func:                              # @Main.func
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 32(%rsp)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	Derived_new@PLT
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB1_2
# %bb.1:                                # %ok.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
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
	movq	%rcx, %rdi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB2_3
# %bb.2:                                # %ok.1
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, %rsi
	callq	*48(%rdx)
                                        # kill: def $rcx killed $rax
	movq	48(%rsp), %rcx
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
	.globl	Base.identify                   # -- Begin function Base.identify
	.p2align	4, 0x90
	.type	Base.identify,@function
Base.identify:                          # @Base.identify
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movq	%rdi, %r8
	movq	%r8, %r9
	movq	%rcx, %r10
	movq	%rax, %r11
	movq	%r9, 120(%rsp)
	movq	%r10, 112(%rsp)
	movq	%r11, 104(%rsp)
	movq	112(%rsp), %rbx
	cmpq	$0, %rbx
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%r9, 88(%rsp)                   # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	je	.LBB4_4
# %bb.1:                                # %ok.2
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*32(%rdx)
	movq	%rax, %rcx
	movq	104(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB4_4
# %bb.2:                                # %ok.1
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB4_4
# %bb.3:                                # %ok.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$128, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB4_4:                                # %abort
	.cfi_def_cfa_offset 144
	callq	abort@PLT
.Lfunc_end4:
	.size	Base.identify, .Lfunc_end4-Base.identify
	.cfi_endproc
                                        # -- End function
	.globl	Base.test                       # -- Begin function Base.test
	.p2align	4, 0x90
	.type	Base.test,@function
Base.test:                              # @Base.test
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$384, %rsp                      # imm = 0x180
	.cfi_def_cfa_offset 400
	.cfi_offset %rbx, -16
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movq	%rcx, %r9
	movq	%r8, 368(%rsp)
	movq	%r9, 360(%rsp)
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	movq	%r8, 344(%rsp)                  # 8-byte Spill
	movq	%rcx, 336(%rsp)                 # 8-byte Spill
	movq	%r9, 328(%rsp)                  # 8-byte Spill
	callq	Main_new@PLT
	movq	%rax, %rcx
	movq	360(%rsp), %rdx
	movq	368(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 320(%rsp)                  # 8-byte Spill
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.1:                                # %ok.4
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %r8
	movq	48(%r8), %r9
	movq	304(%rsp), %r10                 # 8-byte Reload
	movq	%r10, %r11
	movq	%rcx, %rdi
	movq	%r11, %rsi
	movq	312(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%r10, 304(%rsp)                 # 8-byte Spill
	movq	%r11, 296(%rsp)                 # 8-byte Spill
	movq	%r9, 288(%rsp)                  # 8-byte Spill
	movq	%r8, 280(%rsp)                  # 8-byte Spill
	callq	*%r9
	movq	%rax, %rcx
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	callq	Derived_new@PLT
	movq	%rax, %rcx
	movq	360(%rsp), %r8
	movq	368(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 264(%rsp)                  # 8-byte Spill
	movq	%r8, 256(%rsp)                  # 8-byte Spill
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.2:                                # %ok.6
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %r8
	movq	48(%r8), %r9
	movq	248(%rsp), %r10                 # 8-byte Reload
	movq	%r10, %r11
	movq	%rcx, %rdi
	movq	%r11, %rsi
	movq	256(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movq	%r10, 248(%rsp)                 # 8-byte Spill
	movq	%r11, 240(%rsp)                 # 8-byte Spill
	movq	%r9, 232(%rsp)                  # 8-byte Spill
	movq	%r8, 224(%rsp)                  # 8-byte Spill
	callq	*%r9
	movq	%rax, %rcx
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	callq	Base_new@PLT
	movq	%rax, %rcx
	movq	360(%rsp), %r8
	movq	368(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 208(%rsp)                  # 8-byte Spill
	movq	%r8, 200(%rsp)                  # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.3:                                # %ok.8
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %r8
	movq	48(%r8), %r9
	movq	192(%rsp), %r10                 # 8-byte Reload
	movq	%r10, %r11
	movq	%rcx, %rdi
	movq	%r11, %rsi
	movq	200(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%r10, 192(%rsp)                 # 8-byte Spill
	movq	%r11, 184(%rsp)                 # 8-byte Spill
	movq	%r9, 176(%rsp)                  # 8-byte Spill
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	callq	*%r9
	movq	%rax, %rcx
	movq	360(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 160(%rsp)                  # 8-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.4:                                # %ok.7
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	152(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.5:                                # %ok.5
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	216(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 216(%rsp)                  # 8-byte Spill
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	je	.LBB5_9
# %bb.6:                                # %ok.3
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	272(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 272(%rsp)                  # 8-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 360(%rsp)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	callq	Derived_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 376(%rsp)
	movq	376(%rsp), %r8
	movq	360(%rsp), %r9
	movq	368(%rsp), %r10
	cmpq	$0, %r10
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	movq	%r9, 88(%rsp)                   # 8-byte Spill
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	je	.LBB5_9
# %bb.7:                                # %ok.9
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	48(%r8), %r9
	movq	80(%rsp), %r10                  # 8-byte Reload
	movq	%r10, %r11
	movq	%rcx, %rdi
	movq	%r11, %rsi
	movq	88(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%r10, 80(%rsp)                  # 8-byte Spill
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	callq	*%r9
	movq	%rax, %rcx
	movq	%rcx, 360(%rsp)
	movq	368(%rsp), %r8
	movq	360(%rsp), %r9
	movq	368(%rsp), %r10
	cmpq	$0, %r10
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB5_9
# %bb.8:                                # %ok.10
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	48(%r8), %r9
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %r10
	movq	%rcx, %rdi
	movq	%r10, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdx
	callq	*%r9
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$384, %rsp                      # imm = 0x180
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_9:                                # %abort
	.cfi_def_cfa_offset 400
	callq	abort@PLT
.Lfunc_end5:
	.size	Base.test, .Lfunc_end5-Base.test
	.cfi_endproc
                                        # -- End function
	.globl	Base_new                        # -- Begin function Base_new
	.p2align	4, 0x90
	.type	Base_new,@function
Base_new:                               # @Base_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Base_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_Base_vtable_prototype@GOTPCREL(%rip), %rcx
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
	.size	Base_new, .Lfunc_end6-Base_new
	.cfi_endproc
                                        # -- End function
	.globl	Derived_new                     # -- Begin function Derived_new
	.p2align	4, 0x90
	.type	Derived_new,@function
Derived_new:                            # @Derived_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Derived_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB7_2
# %bb.1:                                # %okay
	movq	_Derived_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end7:
	.size	Derived_new, .Lfunc_end7-Derived_new
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

	.type	str.Base,@object                # @str.Base
str.Base:
	.asciz	"Base"
	.size	str.Base, 5

	.type	_Base_vtable_prototype,@object  # @_Base_vtable_prototype
	.globl	_Base_vtable_prototype
	.p2align	4
_Base_vtable_prototype:
	.long	6                               # 0x6
	.long	0+8
	.quad	str.Base
	.quad	Base_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Base.identify
	.quad	Base.test
	.size	_Base_vtable_prototype, 64

	.type	str.Derived,@object             # @str.Derived
str.Derived:
	.asciz	"Derived"
	.size	str.Derived, 8

	.type	_Derived_vtable_prototype,@object # @_Derived_vtable_prototype
	.globl	_Derived_vtable_prototype
	.p2align	4
_Derived_vtable_prototype:
	.long	7                               # 0x7
	.long	0+8
	.quad	str.Derived
	.quad	Derived_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Base.identify
	.quad	Base.test
	.size	_Derived_vtable_prototype, 64

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
	.zero	1
	.size	str.2, 1

	.type	String.2,@object                # @String.2
	.globl	String.2
	.p2align	3
String.2:
	.quad	_String_vtable_prototype
	.quad	str.2
	.size	String.2, 16

	.type	str.1,@object                   # @str.1
str.1:
	.asciz	"\n"
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
	.asciz	"typename_o.cl"
	.size	str.0, 14

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
