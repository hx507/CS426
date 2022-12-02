	.text
	.file	"mp3-hairyscary.ll"
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
	.globl	Bazz.printh                     # -- Begin function Bazz.printh
	.p2align	4, 0x90
	.type	Bazz.printh,@function
Bazz.printh:                            # @Bazz.printh
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB1_2
# %bb.1:                                # %ok.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movl	8(%rcx), %edx
	movq	(%rcx), %r8
	movq	%rcx, %rdi
	movl	%edx, %esi
	callq	*56(%r8)
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:                                # %abort
	.cfi_def_cfa_offset 32
	callq	abort@PLT
.Lfunc_end1:
	.size	Bazz.printh, .Lfunc_end1-Bazz.printh
	.cfi_endproc
                                        # -- End function
	.globl	Bazz.doh                        # -- Begin function Bazz.doh
	.p2align	4, 0x90
	.type	Bazz.doh,@function
Bazz.doh:                               # @Bazz.doh
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	movl	8(%rcx), %edx
	movl	%edx, -12(%rsp)
	incl	8(%rcx)
	movl	-12(%rsp), %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end2:
	.size	Bazz.doh, .Lfunc_end2-Bazz.doh
	.cfi_endproc
                                        # -- End function
	.globl	Bazz_new                        # -- Begin function Bazz_new
	.p2align	4, 0x90
	.type	Bazz_new,@function
Bazz_new:                               # @Bazz_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	%edx, 76(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB3_16
# %bb.1:                                # %okay
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rax, 40(%rsp)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movl	$1, 8(%rax)
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB3_16
# %bb.2:                                # %ok.1
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	jl	.LBB3_5
# %bb.3:                                # %src_gte_br.8.0
	jle	.LBB3_4
.LBB3_5:                                # %br_exit.8.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB3_8
# %bb.6:                                # %src_gte_br.7.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB3_7
.LBB3_8:                                # %br_exit.7.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB3_11
# %bb.9:                                # %src_gte_br.6.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB3_10
.LBB3_11:                               # %br_exit.6.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB3_16
# %bb.12:                               # %src_gte_br.5.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB3_16
# %bb.13:                               # %src_lte_mc.5.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, 144(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	jmp	.LBB3_14
.LBB3_4:                                # %src_lte_mc.8.0
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 120(%rsp)
	movq	%rax, 16(%rsp)
	jmp	.LBB3_14
.LBB3_7:                                # %src_lte_mc.7.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, 136(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB3_14
.LBB3_10:                               # %src_lte_mc.6.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, 128(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 16(%rsp)
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
.LBB3_14:                               # %case.exit.0
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	40(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	je	.LBB3_16
# %bb.15:                               # %ok.2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	36(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Int_init@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	%rcx, %rax
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_16:                               # %abort
	.cfi_def_cfa_offset 160
	callq	abort@PLT
.Lfunc_end3:
	.size	Bazz_new, .Lfunc_end3-Bazz_new
	.cfi_endproc
                                        # -- End function
	.globl	Foo.doh                         # -- Begin function Foo.doh
	.p2align	4, 0x90
	.type	Foo.doh,@function
Foo.doh:                                # @Foo.doh
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	movl	8(%rcx), %edx
	movl	%edx, -12(%rsp)
	addl	$2, 8(%rcx)
	movl	-12(%rsp), %ecx
	movl	%ecx, %eax
	retq
.Lfunc_end4:
	.size	Foo.doh, .Lfunc_end4-Foo.doh
	.cfi_endproc
                                        # -- End function
	.globl	Foo_new                         # -- Begin function Foo_new
	.p2align	4, 0x90
	.type	Foo_new,@function
Foo_new:                                # @Foo_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 336
	movq	_Foo_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movl	%edx, 148(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	je	.LBB5_30
# %bb.1:                                # %okay
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rax, 24(%rsp)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movl	$1, 8(%rax)
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	je	.LBB5_30
# %bb.2:                                # %ok.0
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 8(%rsp)                   # 4-byte Spill
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	jl	.LBB5_5
# %bb.3:                                # %src_gte_br.8.0
	jle	.LBB5_4
.LBB5_5:                                # %br_exit.8.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB5_8
# %bb.6:                                # %src_gte_br.7.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB5_7
.LBB5_8:                                # %br_exit.7.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB5_11
# %bb.9:                                # %src_gte_br.6.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB5_10
.LBB5_11:                               # %br_exit.6.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB5_30
# %bb.12:                               # %src_gte_br.5.0
	movl	8(%rsp), %eax                   # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_30
# %bb.13:                               # %src_lte_mc.5.0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 296(%rsp)
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB5_14
.LBB5_4:                                # %src_lte_mc.8.0
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 272(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB5_14
.LBB5_7:                                # %src_lte_mc.7.0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 288(%rsp)
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB5_14
.LBB5_10:                               # %src_lte_mc.6.0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 280(%rsp)
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
.LBB5_14:                               # %case.exit.0
	movq	64(%rsp), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	je	.LBB5_30
# %bb.15:                               # %ok.1
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	60(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movl	%edx, 60(%rsp)                  # 4-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	112(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	24(%rsp), %r8
	testq	%r8, %r8
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	je	.LBB5_30
# %bb.16:                               # %ok.2
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	jl	.LBB5_19
# %bb.17:                               # %src_gte_br.8.1
	jle	.LBB5_18
.LBB5_19:                               # %br_exit.8.1
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB5_22
# %bb.20:                               # %src_gte_br.7.1
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB5_21
.LBB5_22:                               # %br_exit.7.1
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB5_30
# %bb.23:                               # %src_gte_br.6.1
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_30
# %bb.24:                               # %src_lte_mc.6.1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 312(%rsp)
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	jmp	.LBB5_25
.LBB5_18:                               # %src_lte_mc.8.1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 304(%rsp)
	movq	%rax, 72(%rsp)
	jmp	.LBB5_25
.LBB5_21:                               # %src_lte_mc.7.1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 320(%rsp)
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
.LBB5_25:                               # %case.exit.1
	movq	72(%rsp), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rcx)
	movq	24(%rsp), %rdx
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	je	.LBB5_30
# %bb.26:                               # %ok.3
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	24(%rsp), %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	je	.LBB5_30
# %bb.27:                               # %ok.4
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	je	.LBB5_30
# %bb.28:                               # %ok.5
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	24(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	je	.LBB5_30
# %bb.29:                               # %ok.6
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movl	84(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movl	80(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	128(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rdx, %rdi
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	callq	*80(%rsi)
	movl	%eax, %ecx
	movl	36(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movl	%ecx, 40(%rdx)
	movq	%rdx, %rax
	addq	$328, %rsp                      # imm = 0x148
	.cfi_def_cfa_offset 8
	retq
.LBB5_30:                               # %abort
	.cfi_def_cfa_offset 336
	callq	abort@PLT
.Lfunc_end5:
	.size	Foo_new, .Lfunc_end5-Foo_new
	.cfi_endproc
                                        # -- End function
	.globl	Razz_new                        # -- Begin function Razz_new
	.p2align	4, 0x90
	.type	Razz_new,@function
Razz_new:                               # @Razz_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$504, %rsp                      # imm = 0x1F8
	.cfi_def_cfa_offset 512
	movq	_Razz_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movl	%edx, 220(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB6_42
# %bb.1:                                # %okay
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rax, (%rsp)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movq	$0, 48(%rax)
	movl	$0, 56(%rax)
	movl	$1, 8(%rax)
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	je	.LBB6_42
# %bb.2:                                # %ok.0
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 12(%rsp)                  # 4-byte Spill
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	jl	.LBB6_5
# %bb.3:                                # %src_gte_br.8.0
	jle	.LBB6_4
.LBB6_5:                                # %br_exit.8.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_8
# %bb.6:                                # %src_gte_br.7.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB6_7
.LBB6_8:                                # %br_exit.7.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB6_11
# %bb.9:                                # %src_gte_br.6.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB6_10
.LBB6_11:                               # %br_exit.6.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB6_42
# %bb.12:                               # %src_gte_br.5.0
	movl	12(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_42
# %bb.13:                               # %src_lte_mc.5.0
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 472(%rsp)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB6_14
.LBB6_4:                                # %src_lte_mc.8.0
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 448(%rsp)
	movq	%rax, 80(%rsp)
	jmp	.LBB6_14
.LBB6_7:                                # %src_lte_mc.7.0
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 464(%rsp)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	jmp	.LBB6_14
.LBB6_10:                               # %src_lte_mc.6.0
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 456(%rsp)
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
.LBB6_14:                               # %case.exit.0
	movq	80(%rsp), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.15:                               # %ok.1
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	68(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movl	%edx, 68(%rsp)                  # 4-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	(%rsp), %r8
	testq	%r8, %r8
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.16:                               # %ok.2
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	jl	.LBB6_19
# %bb.17:                               # %src_gte_br.8.1
	jle	.LBB6_18
.LBB6_19:                               # %br_exit.8.1
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_22
# %bb.20:                               # %src_gte_br.7.1
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB6_21
.LBB6_22:                               # %br_exit.7.1
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB6_42
# %bb.23:                               # %src_gte_br.6.1
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_42
# %bb.24:                               # %src_lte_mc.6.1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 488(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 88(%rsp)
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	jmp	.LBB6_25
.LBB6_18:                               # %src_lte_mc.8.1
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 480(%rsp)
	movq	%rax, 88(%rsp)
	jmp	.LBB6_25
.LBB6_21:                               # %src_lte_mc.7.1
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 496(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 88(%rsp)
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
.LBB6_25:                               # %case.exit.1
	movq	88(%rsp), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rcx)
	movq	(%rsp), %rdx
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	movq	%rax, 352(%rsp)                 # 8-byte Spill
	movq	%rdx, 344(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.26:                               # %ok.3
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.27:                               # %ok.4
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 320(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movl	%ecx, 64(%rsp)                  # 4-byte Spill
	je	.LBB6_42
# %bb.28:                               # %ok.5
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movl	%ecx, 60(%rsp)                  # 4-byte Spill
	je	.LBB6_42
# %bb.29:                               # %ok.6
	movl	16(%rsp), %ecx                  # 4-byte Reload
	movl	64(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movl	60(%rsp), %esi                  # 4-byte Reload
	addl	%esi, %ecx
	movq	144(%rsp), %r8                  # 8-byte Reload
	movq	(%r8), %r9
	movq	%r8, %rdi
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	movq	%r8, 144(%rsp)                  # 8-byte Spill
	movl	%edx, 64(%rsp)                  # 4-byte Spill
	movl	%esi, 60(%rsp)                  # 4-byte Spill
	movq	%r9, 304(%rsp)                  # 8-byte Spill
	callq	*80(%r9)
	movl	%eax, %ecx
	movl	16(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	%ecx, 40(%rsi)
	movq	(%rsp), %r8
	testq	%r8, %r8
	movl	%edx, 16(%rsp)                  # 4-byte Spill
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movl	%ecx, 216(%rsp)                 # 4-byte Spill
	je	.LBB6_42
# %bb.30:                               # %ok.7
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 56(%rsp)                  # 4-byte Spill
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	jl	.LBB6_33
# %bb.31:                               # %src_gte_br.8.2
	jle	.LBB6_32
.LBB6_33:                               # %br_exit.8.2
	movl	56(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_42
# %bb.34:                               # %src_gte_br.7.2
	movl	56(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_42
# %bb.35:                               # %src_lte_mc.7.2
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 440(%rsp)
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 192(%rsp)
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	jmp	.LBB6_36
.LBB6_32:                               # %src_lte_mc.8.2
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 432(%rsp)
	movq	%rax, 192(%rsp)
.LBB6_36:                               # %case.exit.2
	movq	192(%rsp), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rcx)
	movq	(%rsp), %rdx
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 280(%rsp)                 # 8-byte Spill
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.37:                               # %ok.8
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	136(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	callq	*88(%rcx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 128(%rsp)                 # 8-byte Spill
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.38:                               # %ok.9
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	movq	48(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movl	%ecx, 108(%rsp)                 # 4-byte Spill
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	je	.LBB6_42
# %bb.39:                               # %ok.10
	movq	120(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 232(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	je	.LBB6_42
# %bb.40:                               # %ok.11
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	movl	%ecx, 100(%rsp)                 # 4-byte Spill
	je	.LBB6_42
# %bb.41:                               # %ok.12
	movl	44(%rsp), %ecx                  # 4-byte Reload
	movl	108(%rsp), %edx                 # 4-byte Reload
	addl	%edx, %ecx
	movl	104(%rsp), %edx                 # 4-byte Reload
	addl	%edx, %ecx
	movl	100(%rsp), %edx                 # 4-byte Reload
	addl	%edx, %ecx
	movq	200(%rsp), %rdx                 # 8-byte Reload
	movq	(%rdx), %rsi
	movq	%rdx, %rdi
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	callq	*80(%rsi)
	movl	%eax, %ecx
	movl	44(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movl	%ecx, 56(%rdx)
	movq	%rdx, %rax
	addq	$504, %rsp                      # imm = 0x1F8
	.cfi_def_cfa_offset 8
	retq
.LBB6_42:                               # %abort
	.cfi_def_cfa_offset 512
	callq	abort@PLT
.Lfunc_end6:
	.size	Razz_new, .Lfunc_end6-Razz_new
	.cfi_endproc
                                        # -- End function
	.globl	Bar_new                         # -- Begin function Bar_new
	.p2align	4, 0x90
	.type	Bar_new,@function
Bar_new:                                # @Bar_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$568, %rsp                      # imm = 0x238
	.cfi_def_cfa_offset 576
	movq	_Bar_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	movl	%edx, 268(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB7_44
# %bb.1:                                # %okay
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rax)
	movq	$0, 24(%rax)
	movq	$0, 32(%rax)
	movl	$0, 40(%rax)
	movq	$0, 48(%rax)
	movq	$0, 56(%rax)
	movq	$0, 64(%rax)
	movl	$1, 8(%rax)
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	je	.LBB7_44
# %bb.2:                                # %ok.0
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	movq	%rcx, 488(%rsp)                 # 8-byte Spill
	jl	.LBB7_5
# %bb.3:                                # %src_gte_br.8.0
	jle	.LBB7_4
.LBB7_5:                                # %br_exit.8.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_8
# %bb.6:                                # %src_gte_br.7.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB7_7
.LBB7_8:                                # %br_exit.7.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_11
# %bb.9:                                # %src_gte_br.6.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB7_10
.LBB7_11:                               # %br_exit.6.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB7_44
# %bb.12:                               # %src_gte_br.5.0
	movl	20(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_44
# %bb.13:                               # %src_lte_mc.5.0
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 536(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 104(%rsp)
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	jmp	.LBB7_14
.LBB7_4:                                # %src_lte_mc.8.0
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 512(%rsp)
	movq	%rax, 104(%rsp)
	jmp	.LBB7_14
.LBB7_7:                                # %src_lte_mc.7.0
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 528(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 104(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	jmp	.LBB7_14
.LBB7_10:                               # %src_lte_mc.6.0
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 520(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 104(%rsp)
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
.LBB7_14:                               # %case.exit.0
	movq	104(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movq	%rax, 456(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.15:                               # %ok.1
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 92(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	92(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	208(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rcx)
	movq	8(%rsp), %r8
	testq	%r8, %r8
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rdx, 208(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.16:                               # %ok.2
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 44(%rsp)                  # 4-byte Spill
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	jl	.LBB7_19
# %bb.17:                               # %src_gte_br.8.1
	jle	.LBB7_18
.LBB7_19:                               # %br_exit.8.1
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_22
# %bb.20:                               # %src_gte_br.7.1
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jle	.LBB7_21
.LBB7_22:                               # %br_exit.7.1
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_44
# %bb.23:                               # %src_gte_br.6.1
	movl	44(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_44
# %bb.24:                               # %src_lte_mc.6.1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 552(%rsp)
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	jmp	.LBB7_25
.LBB7_18:                               # %src_lte_mc.8.1
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 544(%rsp)
	movq	%rax, 112(%rsp)
	jmp	.LBB7_25
.LBB7_21:                               # %src_lte_mc.7.1
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 560(%rsp)
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 112(%rsp)
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
.LBB7_25:                               # %case.exit.1
	movq	112(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rcx)
	movq	8(%rsp), %rdx
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 200(%rsp)                 # 8-byte Spill
	movq	%rax, 416(%rsp)                 # 8-byte Spill
	movq	%rdx, 408(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.26:                               # %ok.3
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%rdx, 400(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 192(%rsp)                 # 8-byte Spill
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movq	%rdx, 392(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.27:                               # %ok.4
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	movl	%ecx, 88(%rsp)                  # 4-byte Spill
	je	.LBB7_44
# %bb.28:                               # %ok.5
	movq	184(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	movq	%rdx, 376(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	je	.LBB7_44
# %bb.29:                               # %ok.6
	movl	40(%rsp), %ecx                  # 4-byte Reload
	movl	88(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movl	84(%rsp), %esi                  # 4-byte Reload
	addl	%esi, %ecx
	movq	176(%rsp), %r8                  # 8-byte Reload
	movq	(%r8), %r9
	movq	%r8, %rdi
	movl	%ecx, 40(%rsp)                  # 4-byte Spill
	movq	%r8, 176(%rsp)                  # 8-byte Spill
	movl	%edx, 88(%rsp)                  # 4-byte Spill
	movl	%esi, 84(%rsp)                  # 4-byte Spill
	movq	%r9, 368(%rsp)                  # 8-byte Spill
	callq	*80(%r9)
	movl	%eax, %ecx
	movl	40(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%ecx, 40(%rsi)
	movq	8(%rsp), %r8
	testq	%r8, %r8
	movl	%edx, 40(%rsp)                  # 4-byte Spill
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movl	%ecx, 264(%rsp)                 # 4-byte Spill
	je	.LBB7_44
# %bb.30:                               # %ok.7
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$8, %edx
	movl	%edx, 80(%rsp)                  # 4-byte Spill
	movq	%rcx, 360(%rsp)                 # 8-byte Spill
	jl	.LBB7_33
# %bb.31:                               # %src_gte_br.8.2
	jle	.LBB7_32
.LBB7_33:                               # %br_exit.8.2
	movl	80(%rsp), %eax                  # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_44
# %bb.34:                               # %src_gte_br.7.2
	movl	80(%rsp), %eax                  # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_44
# %bb.35:                               # %src_lte_mc.7.2
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 504(%rsp)
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 224(%rsp)
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	jmp	.LBB7_36
.LBB7_32:                               # %src_lte_mc.8.2
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 496(%rsp)
	movq	%rax, 224(%rsp)
.LBB7_36:                               # %case.exit.2
	movq	224(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rcx)
	movq	8(%rsp), %rdx
	movq	32(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 168(%rsp)                 # 8-byte Spill
	movq	%rax, 344(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.37:                               # %ok.8
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	168(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rdi
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	%rcx, 328(%rsp)                 # 8-byte Spill
	callq	*88(%rcx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	movq	16(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%rdx, 320(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.38:                               # %ok.9
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	movq	48(%rdx), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movl	%ecx, 76(%rsp)                  # 4-byte Spill
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	je	.LBB7_44
# %bb.39:                               # %ok.10
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, 296(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movl	%ecx, 72(%rsp)                  # 4-byte Spill
	je	.LBB7_44
# %bb.40:                               # %ok.11
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	8(%rsp), %rdx
	testq	%rdx, %rdx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movl	%ecx, 68(%rsp)                  # 4-byte Spill
	je	.LBB7_44
# %bb.41:                               # %ok.12
	movl	36(%rsp), %ecx                  # 4-byte Reload
	movl	76(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movl	72(%rsp), %esi                  # 4-byte Reload
	addl	%esi, %ecx
	movl	68(%rsp), %r8d                  # 4-byte Reload
	addl	%r8d, %ecx
	movq	136(%rsp), %r9                  # 8-byte Reload
	movq	(%r9), %r10
	movq	%r9, %rdi
	movl	%ecx, 36(%rsp)                  # 4-byte Spill
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movl	%edx, 76(%rsp)                  # 4-byte Spill
	movl	%esi, 72(%rsp)                  # 4-byte Spill
	movl	%r8d, 68(%rsp)                  # 4-byte Spill
	movq	%r10, 280(%rsp)                 # 8-byte Spill
	callq	*80(%r10)
	movl	%eax, %ecx
	movl	36(%rsp), %edx                  # 4-byte Reload
	addl	%edx, %ecx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%ecx, 56(%rsi)
	movq	8(%rsp), %r8
	testq	%r8, %r8
	movl	%edx, 36(%rsp)                  # 4-byte Spill
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	movl	%ecx, 260(%rsp)                 # 4-byte Spill
	je	.LBB7_44
# %bb.42:                               # %ok.13
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%ecx, 60(%rdx)
	movq	8(%rsp), %rsi
	testq	%rsi, %rsi
	movq	%rsi, 240(%rsp)                 # 8-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	je	.LBB7_44
# %bb.43:                               # %ok.14
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 124(%rsp)                 # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	124(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	232(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rcx)
	movq	%rcx, %rax
	addq	$568, %rsp                      # imm = 0x238
	.cfi_def_cfa_offset 8
	retq
.LBB7_44:                               # %abort
	.cfi_def_cfa_offset 576
	callq	abort@PLT
.Lfunc_end7:
	.size	Bar_new, .Lfunc_end7-Bar_new
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, -8(%rsp)
	movq	String.1@GOTPCREL(%rip), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end8:
	.size	Main.main, .Lfunc_end8-Main.main
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
	je	.LBB9_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Bazz_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 24(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 32(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end9:
	.size	Main_new, .Lfunc_end9-Main_new
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

	.type	str.Bazz,@object                # @str.Bazz
str.Bazz:
	.asciz	"Bazz"
	.size	str.Bazz, 5

	.type	_Bazz_vtable_prototype,@object  # @_Bazz_vtable_prototype
	.globl	_Bazz_vtable_prototype
	.p2align	4
_Bazz_vtable_prototype:
	.long	5                               # 0x5
	.long	0+32
	.quad	str.Bazz
	.quad	Bazz_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Bazz.printh
	.quad	Bazz.doh
	.size	_Bazz_vtable_prototype, 96

	.type	str.Foo,@object                 # @str.Foo
str.Foo:
	.asciz	"Foo"
	.size	str.Foo, 4

	.type	_Foo_vtable_prototype,@object   # @_Foo_vtable_prototype
	.globl	_Foo_vtable_prototype
	.p2align	4
_Foo_vtable_prototype:
	.long	6                               # 0x6
	.long	0+48
	.quad	str.Foo
	.quad	Foo_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Bazz.printh
	.quad	Foo.doh
	.size	_Foo_vtable_prototype, 96

	.type	str.Razz,@object                # @str.Razz
str.Razz:
	.asciz	"Razz"
	.size	str.Razz, 5

	.type	_Razz_vtable_prototype,@object  # @_Razz_vtable_prototype
	.globl	_Razz_vtable_prototype
	.p2align	4
_Razz_vtable_prototype:
	.long	7                               # 0x7
	.long	0+64
	.quad	str.Razz
	.quad	Razz_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Bazz.printh
	.quad	Foo.doh
	.size	_Razz_vtable_prototype, 96

	.type	str.Bar,@object                 # @str.Bar
str.Bar:
	.asciz	"Bar"
	.size	str.Bar, 4

	.type	_Bar_vtable_prototype,@object   # @_Bar_vtable_prototype
	.globl	_Bar_vtable_prototype
	.p2align	4
_Bar_vtable_prototype:
	.long	8                               # 0x8
	.long	0+72
	.quad	str.Bar
	.quad	Bar_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Bazz.printh
	.quad	Foo.doh
	.size	_Bar_vtable_prototype, 96

	.type	str.Main,@object                # @str.Main
str.Main:
	.asciz	"Main"
	.size	str.Main, 5

	.type	_Main_vtable_prototype,@object  # @_Main_vtable_prototype
	.globl	_Main_vtable_prototype
	.p2align	4
_Main_vtable_prototype:
	.long	9                               # 0x9
	.long	0+40
	.quad	str.Main
	.quad	Main_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Main.main
	.size	_Main_vtable_prototype, 56

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
	.asciz	"do nothing"
	.size	str.1, 11

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"hairyscary.cl"
	.size	str.0, 14

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
