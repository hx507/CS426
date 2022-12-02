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
	.globl	Bazz.printh                     # -- Begin function Bazz.printh
	.p2align	4, 0x90
	.type	Bazz.printh,@function
Bazz.printh:                            # @Bazz.printh
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)
	movq	48(%rsp), %rdx
	movl	8(%rdx), %esi
	movq	48(%rsp), %r8
	cmpq	$0, %r8
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movl	%esi, 20(%rsp)                  # 4-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB1_2
# %bb.1:                                # %ok.0
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	20(%rsp), %ecx                  # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	xorl	%ecx, %ecx
	movl	%ecx, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_2:                                # %abort
	.cfi_def_cfa_offset 64
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
	movq	%rcx, %rdx
	movq	%rdx, -16(%rsp)
	movq	-16(%rsp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -4(%rsp)
	movq	-16(%rsp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, %ecx
	addl	$1, %ecx
	movq	-16(%rsp), %rdx
	movl	%ecx, 8(%rdx)
	movl	-4(%rsp), %ecx
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movl	%edx, 188(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	je	.LBB3_22
# %bb.1:                                # %okay
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rax
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 240(%rsp)
	movl	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movl	$1, 8(%rcx)
	movq	%rcx, %rdx
	addq	$16, %rdx
	movq	240(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	je	.LBB3_22
# %bb.2:                                # %ok.1
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 140(%rsp)                 # 4-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
# %bb.3:                                # %case.hdr.0
	jmp	.LBB3_4
.LBB3_4:                                # %case.8.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB3_7
# %bb.5:                                # %src_gte_br.8.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB3_7
# %bb.6:                                # %src_lte_mc.8.0
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 200(%rsp)
	movq	200(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, 232(%rsp)
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB3_20
.LBB3_7:                                # %br_exit.8.0
	jmp	.LBB3_8
.LBB3_8:                                # %case.7.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB3_11
# %bb.9:                                # %src_gte_br.7.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB3_11
# %bb.10:                               # %src_lte_mc.7.0
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 216(%rsp)
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 232(%rsp)
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB3_20
.LBB3_11:                               # %br_exit.7.0
	jmp	.LBB3_12
.LBB3_12:                               # %case.6.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB3_15
# %bb.13:                               # %src_gte_br.6.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB3_15
# %bb.14:                               # %src_lte_mc.6.0
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 208(%rsp)
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 232(%rsp)
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB3_20
.LBB3_15:                               # %br_exit.6.0
	jmp	.LBB3_16
.LBB3_16:                               # %case.5.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB3_19
# %bb.17:                               # %src_gte_br.5.0
	movl	140(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB3_19
# %bb.18:                               # %src_lte_mc.5.0
	movq	160(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 224(%rsp)
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 232(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	jmp	.LBB3_20
.LBB3_19:                               # %br_exit.5.0
	jmp	.LBB3_22
.LBB3_20:                               # %case.exit.0
	movq	232(%rsp), %rax
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	176(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$24, %rsi
	movq	240(%rsp), %rdi
	cmpq	$0, %rdi
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	je	.LBB3_22
# %bb.21:                               # %ok.2
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	20(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Int_init@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_22:                               # %abort
	.cfi_def_cfa_offset 256
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
	movq	%rcx, %rdx
	movq	%rdx, -16(%rsp)
	movq	-16(%rsp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, -4(%rsp)
	movq	-16(%rsp), %rcx
	movl	8(%rcx), %edx
	movl	%edx, %ecx
	addl	$2, %ecx
	movq	-16(%rsp), %rdx
	movl	%ecx, 8(%rdx)
	movl	-4(%rsp), %ecx
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
	subq	$520, %rsp                      # imm = 0x208
	.cfi_def_cfa_offset 528
	movq	_Foo_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	movl	%edx, 428(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 416(%rsp)                 # 8-byte Spill
	movq	%rcx, 408(%rsp)                 # 8-byte Spill
	je	.LBB5_41
# %bb.1:                                # %okay
	movq	_Foo_vtable_prototype@GOTPCREL(%rip), %rax
	movq	416(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 512(%rsp)
	movl	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movl	$0, 40(%rcx)
	movl	$1, 8(%rcx)
	movq	%rcx, %rdx
	addq	$16, %rdx
	movq	512(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 400(%rsp)                 # 8-byte Spill
	movq	%rdx, 392(%rsp)                 # 8-byte Spill
	movq	%rax, 384(%rsp)                 # 8-byte Spill
	je	.LBB5_41
# %bb.2:                                # %ok.0
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 380(%rsp)                 # 4-byte Spill
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
# %bb.3:                                # %case.hdr.0
	jmp	.LBB5_4
.LBB5_4:                                # %case.8.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB5_7
# %bb.5:                                # %src_gte_br.8.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_7
# %bb.6:                                # %src_lte_mc.8.0
	movq	400(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 440(%rsp)
	movq	440(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, 472(%rsp)
	movq	%rsi, 360(%rsp)                 # 8-byte Spill
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	jmp	.LBB5_20
.LBB5_7:                                # %br_exit.8.0
	jmp	.LBB5_8
.LBB5_8:                                # %case.7.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB5_11
# %bb.9:                                # %src_gte_br.7.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_11
# %bb.10:                               # %src_lte_mc.7.0
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 456(%rsp)
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 472(%rsp)
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	jmp	.LBB5_20
.LBB5_11:                               # %br_exit.7.0
	jmp	.LBB5_12
.LBB5_12:                               # %case.6.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB5_15
# %bb.13:                               # %src_gte_br.6.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_15
# %bb.14:                               # %src_lte_mc.6.0
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 448(%rsp)
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 472(%rsp)
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	movq	%rcx, 304(%rsp)                 # 8-byte Spill
	jmp	.LBB5_20
.LBB5_15:                               # %br_exit.6.0
	jmp	.LBB5_16
.LBB5_16:                               # %case.5.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB5_19
# %bb.17:                               # %src_gte_br.5.0
	movl	380(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_19
# %bb.18:                               # %src_lte_mc.5.0
	movq	400(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 464(%rsp)
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movq	%rdx, 296(%rsp)                 # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 472(%rsp)
	movq	%rcx, 288(%rsp)                 # 8-byte Spill
	jmp	.LBB5_20
.LBB5_19:                               # %br_exit.5.0
	jmp	.LBB5_41
.LBB5_20:                               # %case.exit.0
	movq	472(%rsp), %rax
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	416(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$24, %rsi
	movq	512(%rsp), %rdi
	cmpq	$0, %rdi
	movq	%rdi, 280(%rsp)                 # 8-byte Spill
	movq	%rsi, 272(%rsp)                 # 8-byte Spill
	movq	%rax, 264(%rsp)                 # 8-byte Spill
	je	.LBB5_41
# %bb.21:                               # %ok.1
	movq	280(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 280(%rsp)                 # 8-byte Spill
	movq	%rdx, 256(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 252(%rsp)                 # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	252(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movl	%edx, 252(%rsp)                 # 4-byte Spill
	callq	Int_init@PLT
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	272(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, (%r8)
	movq	416(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$32, %r10
	movq	512(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 232(%rsp)                 # 8-byte Spill
	movq	%r10, 224(%rsp)                 # 8-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	je	.LBB5_41
# %bb.22:                               # %ok.2
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 212(%rsp)                 # 4-byte Spill
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
# %bb.23:                               # %case.hdr.1
	jmp	.LBB5_24
.LBB5_24:                               # %case.8.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB5_27
# %bb.25:                               # %src_gte_br.8.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_27
# %bb.26:                               # %src_lte_mc.8.1
	movq	232(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 480(%rsp)
	movq	480(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rdi, 504(%rsp)
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	movq	%rsi, 184(%rsp)                 # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB5_36
.LBB5_27:                               # %br_exit.8.1
	jmp	.LBB5_28
.LBB5_28:                               # %case.7.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB5_31
# %bb.29:                               # %src_gte_br.7.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_31
# %bb.30:                               # %src_lte_mc.7.1
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 496(%rsp)
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rsi, 504(%rsp)
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	jmp	.LBB5_36
.LBB5_31:                               # %br_exit.7.1
	jmp	.LBB5_32
.LBB5_32:                               # %case.6.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB5_35
# %bb.33:                               # %src_gte_br.6.1
	movl	212(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB5_35
# %bb.34:                               # %src_lte_mc.6.1
	movq	232(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 488(%rsp)
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 504(%rsp)
	movq	%rdx, 128(%rsp)                 # 8-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	jmp	.LBB5_36
.LBB5_35:                               # %br_exit.6.1
	jmp	.LBB5_41
.LBB5_36:                               # %case.exit.1
	movq	504(%rsp), %rax
	movq	%rax, %rcx
	movq	224(%rsp), %rdx                 # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	416(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$40, %rdi
	movq	512(%rsp), %r8
	movq	32(%r8), %r9
	cmpq	$0, %r9
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	movq	%r8, 104(%rsp)                  # 8-byte Spill
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	je	.LBB5_41
# %bb.37:                               # %ok.3
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	512(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movl	%ecx, 52(%rsp)                  # 4-byte Spill
	je	.LBB5_41
# %bb.38:                               # %ok.4
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	512(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	je	.LBB5_41
# %bb.39:                               # %ok.5
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	28(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	512(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movl	%ecx, (%rsp)                    # 4-byte Spill
	je	.LBB5_41
# %bb.40:                               # %ok.6
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	4(%rsp), %edx                   # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movl	%esi, (%rcx)
	movq	416(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$520, %rsp                      # imm = 0x208
	.cfi_def_cfa_offset 8
	retq
.LBB5_41:                               # %abort
	.cfi_def_cfa_offset 528
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
	subq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 784
	movq	_Razz_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	movl	%edx, 660(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 648(%rsp)                 # 8-byte Spill
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.1:                                # %okay
	movq	_Razz_vtable_prototype@GOTPCREL(%rip), %rax
	movq	648(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 768(%rsp)
	movl	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movl	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movl	$0, 56(%rcx)
	movl	$1, 8(%rcx)
	movq	%rcx, %rdx
	addq	$16, %rdx
	movq	768(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 632(%rsp)                 # 8-byte Spill
	movq	%rdx, 624(%rsp)                 # 8-byte Spill
	movq	%rax, 616(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.2:                                # %ok.0
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 612(%rsp)                 # 4-byte Spill
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
# %bb.3:                                # %case.hdr.0
	jmp	.LBB6_4
.LBB6_4:                                # %case.8.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB6_7
# %bb.5:                                # %src_gte_br.8.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_7
# %bb.6:                                # %src_lte_mc.8.0
	movq	632(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 696(%rsp)
	movq	696(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, 728(%rsp)
	movq	%rsi, 592(%rsp)                 # 8-byte Spill
	movq	%rdx, 584(%rsp)                 # 8-byte Spill
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	jmp	.LBB6_20
.LBB6_7:                                # %br_exit.8.0
	jmp	.LBB6_8
.LBB6_8:                                # %case.7.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_11
# %bb.9:                                # %src_gte_br.7.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_11
# %bb.10:                               # %src_lte_mc.7.0
	movq	632(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 712(%rsp)
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 728(%rsp)
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	movq	%rcx, 560(%rsp)                 # 8-byte Spill
	jmp	.LBB6_20
.LBB6_11:                               # %br_exit.7.0
	jmp	.LBB6_12
.LBB6_12:                               # %case.6.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB6_15
# %bb.13:                               # %src_gte_br.6.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_15
# %bb.14:                               # %src_lte_mc.6.0
	movq	632(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 704(%rsp)
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movq	%rdx, 552(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 728(%rsp)
	movq	%rdx, 544(%rsp)                 # 8-byte Spill
	movq	%rcx, 536(%rsp)                 # 8-byte Spill
	jmp	.LBB6_20
.LBB6_15:                               # %br_exit.6.0
	jmp	.LBB6_16
.LBB6_16:                               # %case.5.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB6_19
# %bb.17:                               # %src_gte_br.5.0
	movl	612(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_19
# %bb.18:                               # %src_lte_mc.5.0
	movq	632(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 720(%rsp)
	movq	%rcx, 632(%rsp)                 # 8-byte Spill
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 728(%rsp)
	movq	%rcx, 520(%rsp)                 # 8-byte Spill
	jmp	.LBB6_20
.LBB6_19:                               # %br_exit.5.0
	jmp	.LBB6_57
.LBB6_20:                               # %case.exit.0
	movq	728(%rsp), %rax
	movq	624(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	648(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$24, %rsi
	movq	768(%rsp), %rdi
	cmpq	$0, %rdi
	movq	%rdi, 512(%rsp)                 # 8-byte Spill
	movq	%rsi, 504(%rsp)                 # 8-byte Spill
	movq	%rax, 496(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.21:                               # %ok.1
	movq	512(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
	movq	%rdx, 488(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 484(%rsp)                 # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	484(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	movl	%edx, 484(%rsp)                 # 4-byte Spill
	callq	Int_init@PLT
	movq	472(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	504(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, (%r8)
	movq	648(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$32, %r10
	movq	768(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 464(%rsp)                 # 8-byte Spill
	movq	%r10, 456(%rsp)                 # 8-byte Spill
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	movq	%rcx, 472(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.22:                               # %ok.2
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 444(%rsp)                 # 4-byte Spill
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
# %bb.23:                               # %case.hdr.1
	jmp	.LBB6_24
.LBB6_24:                               # %case.8.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB6_27
# %bb.25:                               # %src_gte_br.8.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_27
# %bb.26:                               # %src_lte_mc.8.1
	movq	464(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 736(%rsp)
	movq	736(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rsi, %rdi
	movq	%rdi, 760(%rsp)
	movq	%rdi, 424(%rsp)                 # 8-byte Spill
	movq	%rsi, 416(%rsp)                 # 8-byte Spill
	movq	%rdx, 408(%rsp)                 # 8-byte Spill
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	jmp	.LBB6_36
.LBB6_27:                               # %br_exit.8.1
	jmp	.LBB6_28
.LBB6_28:                               # %case.7.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_31
# %bb.29:                               # %src_gte_br.7.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_31
# %bb.30:                               # %src_lte_mc.7.1
	movq	464(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 752(%rsp)
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rsi, 760(%rsp)
	movq	%rsi, 392(%rsp)                 # 8-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	jmp	.LBB6_36
.LBB6_31:                               # %br_exit.7.1
	jmp	.LBB6_32
.LBB6_32:                               # %case.6.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB6_35
# %bb.33:                               # %src_gte_br.6.1
	movl	444(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_35
# %bb.34:                               # %src_lte_mc.6.1
	movq	464(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 744(%rsp)
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
	movq	%rdx, 368(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 760(%rsp)
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	movq	%rcx, 352(%rsp)                 # 8-byte Spill
	jmp	.LBB6_36
.LBB6_35:                               # %br_exit.6.1
	jmp	.LBB6_57
.LBB6_36:                               # %case.exit.1
	movq	760(%rsp), %rax
	movq	%rax, %rcx
	movq	456(%rsp), %rdx                 # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	648(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$40, %rdi
	movq	768(%rsp), %r8
	movq	32(%r8), %r9
	cmpq	$0, %r9
	movq	%r9, 344(%rsp)                  # 8-byte Spill
	movq	%r8, 336(%rsp)                  # 8-byte Spill
	movq	%rdi, 328(%rsp)                 # 8-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%rax, 312(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.37:                               # %ok.3
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	768(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 296(%rsp)                 # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	movl	%ecx, 284(%rsp)                 # 4-byte Spill
	je	.LBB6_57
# %bb.38:                               # %ok.4
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	movq	%rdx, 272(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	284(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	768(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 264(%rsp)                  # 8-byte Spill
	movl	%esi, 260(%rsp)                 # 4-byte Spill
	movl	%ecx, 256(%rsp)                 # 4-byte Spill
	je	.LBB6_57
# %bb.39:                               # %ok.5
	movq	264(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	260(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	768(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 240(%rsp)                  # 8-byte Spill
	movl	%esi, 236(%rsp)                 # 4-byte Spill
	movl	%ecx, 232(%rsp)                 # 4-byte Spill
	je	.LBB6_57
# %bb.40:                               # %ok.6
	movq	240(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	236(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	328(%rsp), %r8                  # 8-byte Reload
	movl	%esi, (%r8)
	movq	648(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$48, %r10
	movq	768(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 216(%rsp)                 # 8-byte Spill
	movq	%r10, 208(%rsp)                 # 8-byte Spill
	movl	%esi, 204(%rsp)                 # 4-byte Spill
	movl	%ecx, 200(%rsp)                 # 4-byte Spill
	je	.LBB6_57
# %bb.41:                               # %ok.7
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 196(%rsp)                 # 4-byte Spill
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
# %bb.42:                               # %case.hdr.2
	jmp	.LBB6_43
.LBB6_43:                               # %case.8.2
	movl	196(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB6_46
# %bb.44:                               # %src_gte_br.8.2
	movl	196(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_46
# %bb.45:                               # %src_lte_mc.8.2
	movq	216(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 672(%rsp)
	movq	672(%rsp), %rdx
	movq	%rdx, 688(%rsp)
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	jmp	.LBB6_51
.LBB6_46:                               # %br_exit.8.2
	jmp	.LBB6_47
.LBB6_47:                               # %case.7.2
	movl	196(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB6_50
# %bb.48:                               # %src_gte_br.7.2
	movl	196(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB6_50
# %bb.49:                               # %src_lte_mc.7.2
	movq	216(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 680(%rsp)
	movq	%rcx, 216(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 688(%rsp)
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	jmp	.LBB6_51
.LBB6_50:                               # %br_exit.7.2
	jmp	.LBB6_57
.LBB6_51:                               # %case.exit.2
	movq	688(%rsp), %rax
	movq	208(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	648(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$56, %rsi
	movq	768(%rsp), %rdi
	movq	32(%rdi), %r8
	cmpq	$0, %r8
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	%rsi, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	je	.LBB6_57
# %bb.52:                               # %ok.8
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	88(%rcx), %rdx
	movq	152(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	movq	%r8, %rdi
	movq	%rsi, 152(%rsp)                 # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	callq	*%rdx
	movl	%eax, %ecx
	movq	768(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movl	%ecx, 84(%rsp)                  # 4-byte Spill
	je	.LBB6_57
# %bb.53:                               # %ok.9
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	84(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	768(%rsp), %r8
	movq	48(%r8), %r9
	cmpq	$0, %r9
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movl	%esi, 52(%rsp)                  # 4-byte Spill
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	je	.LBB6_57
# %bb.54:                               # %ok.10
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	52(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	768(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movl	%esi, 28(%rsp)                  # 4-byte Spill
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	je	.LBB6_57
# %bb.55:                               # %ok.11
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	28(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	768(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movl	%esi, 4(%rsp)                   # 4-byte Spill
	movl	%ecx, (%rsp)                    # 4-byte Spill
	je	.LBB6_57
# %bb.56:                               # %ok.12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	4(%rsp), %edx                   # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	136(%rsp), %rcx                 # 8-byte Reload
	movl	%esi, (%rcx)
	movq	648(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$776, %rsp                      # imm = 0x308
	.cfi_def_cfa_offset 8
	retq
.LBB6_57:                               # %abort
	.cfi_def_cfa_offset 784
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
	subq	$856, %rsp                      # imm = 0x358
	.cfi_def_cfa_offset 864
	movq	_Bar_vtable_prototype@GOTPCREL(%rip), %rcx
	movl	4(%rcx), %edx
	movl	%edx, %edi
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	movl	%edx, 740(%rsp)                 # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 728(%rsp)                 # 8-byte Spill
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.1:                                # %okay
	movq	_Bar_vtable_prototype@GOTPCREL(%rip), %rax
	movq	728(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%rcx, 848(%rsp)
	movl	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	$0, 24(%rcx)
	movq	$0, 32(%rcx)
	movl	$0, 40(%rcx)
	movq	$0, 48(%rcx)
	movl	$0, 56(%rcx)
	movl	$0, 60(%rcx)
	movq	$0, 64(%rcx)
	movl	$1, 8(%rcx)
	movq	%rcx, %rdx
	addq	$16, %rdx
	movq	848(%rsp), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 712(%rsp)                 # 8-byte Spill
	movq	%rdx, 704(%rsp)                 # 8-byte Spill
	movq	%rax, 696(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.2:                                # %ok.0
	movq	712(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 692(%rsp)                 # 4-byte Spill
	movq	%rcx, 680(%rsp)                 # 8-byte Spill
# %bb.3:                                # %case.hdr.0
	jmp	.LBB7_4
.LBB7_4:                                # %case.8.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB7_7
# %bb.5:                                # %src_gte_br.8.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_7
# %bb.6:                                # %src_lte_mc.8.0
	movq	712(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 776(%rsp)
	movq	776(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, 808(%rsp)
	movq	%rdx, 672(%rsp)                 # 8-byte Spill
	movq	%rcx, 664(%rsp)                 # 8-byte Spill
	jmp	.LBB7_20
.LBB7_7:                                # %br_exit.8.0
	jmp	.LBB7_8
.LBB7_8:                                # %case.7.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_11
# %bb.9:                                # %src_gte_br.7.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_11
# %bb.10:                               # %src_lte_mc.7.0
	movq	712(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 792(%rsp)
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	movq	%rdx, 656(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 808(%rsp)
	movq	%rdx, 648(%rsp)                 # 8-byte Spill
	movq	%rcx, 640(%rsp)                 # 8-byte Spill
	jmp	.LBB7_20
.LBB7_11:                               # %br_exit.7.0
	jmp	.LBB7_12
.LBB7_12:                               # %case.6.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_15
# %bb.13:                               # %src_gte_br.6.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_15
# %bb.14:                               # %src_lte_mc.6.0
	movq	712(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 784(%rsp)
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	movq	%rdx, 632(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 808(%rsp)
	movq	%rdx, 624(%rsp)                 # 8-byte Spill
	movq	%rcx, 616(%rsp)                 # 8-byte Spill
	jmp	.LBB7_20
.LBB7_15:                               # %br_exit.6.0
	jmp	.LBB7_16
.LBB7_16:                               # %case.5.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB7_19
# %bb.17:                               # %src_gte_br.5.0
	movl	692(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_19
# %bb.18:                               # %src_lte_mc.5.0
	movq	712(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 800(%rsp)
	movq	%rcx, 712(%rsp)                 # 8-byte Spill
	movq	%rdx, 608(%rsp)                 # 8-byte Spill
	callq	Foo_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 808(%rsp)
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	jmp	.LBB7_20
.LBB7_19:                               # %br_exit.5.0
	jmp	.LBB7_59
.LBB7_20:                               # %case.exit.0
	movq	808(%rsp), %rax
	movq	704(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	728(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$24, %rsi
	movq	848(%rsp), %rdi
	cmpq	$0, %rdi
	movq	%rdi, 592(%rsp)                 # 8-byte Spill
	movq	%rsi, 584(%rsp)                 # 8-byte Spill
	movq	%rax, 576(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.21:                               # %ok.1
	movq	592(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 592(%rsp)                 # 8-byte Spill
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 564(%rsp)                 # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	564(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	movl	%edx, 564(%rsp)                 # 4-byte Spill
	callq	Int_init@PLT
	movq	552(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	584(%rsp), %r8                  # 8-byte Reload
	movq	%rdx, (%r8)
	movq	728(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$32, %r10
	movq	848(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 544(%rsp)                 # 8-byte Spill
	movq	%r10, 536(%rsp)                 # 8-byte Spill
	movq	%rdx, 528(%rsp)                 # 8-byte Spill
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.22:                               # %ok.2
	movq	544(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 524(%rsp)                 # 4-byte Spill
	movq	%rcx, 512(%rsp)                 # 8-byte Spill
# %bb.23:                               # %case.hdr.1
	jmp	.LBB7_24
.LBB7_24:                               # %case.8.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB7_27
# %bb.25:                               # %src_gte_br.8.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_27
# %bb.26:                               # %src_lte_mc.8.1
	movq	544(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 816(%rsp)
	movq	816(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rsi, 840(%rsp)
	movq	%rsi, 504(%rsp)                 # 8-byte Spill
	movq	%rdx, 496(%rsp)                 # 8-byte Spill
	movq	%rcx, 488(%rsp)                 # 8-byte Spill
	jmp	.LBB7_36
.LBB7_27:                               # %br_exit.8.1
	jmp	.LBB7_28
.LBB7_28:                               # %case.7.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_31
# %bb.29:                               # %src_gte_br.7.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_31
# %bb.30:                               # %src_lte_mc.7.1
	movq	544(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 832(%rsp)
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	movq	%rdx, 480(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rsi, 840(%rsp)
	movq	%rsi, 472(%rsp)                 # 8-byte Spill
	movq	%rdx, 464(%rsp)                 # 8-byte Spill
	movq	%rcx, 456(%rsp)                 # 8-byte Spill
	jmp	.LBB7_36
.LBB7_31:                               # %br_exit.7.1
	jmp	.LBB7_32
.LBB7_32:                               # %case.6.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB7_35
# %bb.33:                               # %src_gte_br.6.1
	movl	524(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_35
# %bb.34:                               # %src_lte_mc.6.1
	movq	544(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 824(%rsp)
	movq	%rcx, 544(%rsp)                 # 8-byte Spill
	movq	%rdx, 448(%rsp)                 # 8-byte Spill
	callq	Razz_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 840(%rsp)
	movq	%rdx, 440(%rsp)                 # 8-byte Spill
	movq	%rcx, 432(%rsp)                 # 8-byte Spill
	jmp	.LBB7_36
.LBB7_35:                               # %br_exit.6.1
	jmp	.LBB7_59
.LBB7_36:                               # %case.exit.1
	movq	840(%rsp), %rax
	movq	%rax, %rcx
	movq	536(%rsp), %rdx                 # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	728(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %rdi
	addq	$40, %rdi
	movq	848(%rsp), %r8
	movq	32(%r8), %r9
	cmpq	$0, %r9
	movq	%r9, 424(%rsp)                  # 8-byte Spill
	movq	%r8, 416(%rsp)                  # 8-byte Spill
	movq	%rdi, 408(%rsp)                 # 8-byte Spill
	movq	%rcx, 400(%rsp)                 # 8-byte Spill
	movq	%rax, 392(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.37:                               # %ok.3
	movq	424(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 424(%rsp)                 # 8-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	848(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 376(%rsp)                 # 8-byte Spill
	movq	%rdx, 368(%rsp)                 # 8-byte Spill
	movl	%ecx, 364(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.38:                               # %ok.4
	movq	376(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 376(%rsp)                 # 8-byte Spill
	movq	%rdx, 352(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	364(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	848(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 344(%rsp)                  # 8-byte Spill
	movl	%esi, 340(%rsp)                 # 4-byte Spill
	movl	%ecx, 336(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.39:                               # %ok.5
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	movq	%rdx, 328(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	340(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	848(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 320(%rsp)                  # 8-byte Spill
	movl	%esi, 316(%rsp)                 # 4-byte Spill
	movl	%ecx, 312(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.40:                               # %ok.6
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	movq	%rdx, 304(%rsp)                 # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	316(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	408(%rsp), %r8                  # 8-byte Reload
	movl	%esi, (%r8)
	movq	728(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$48, %r10
	movq	848(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 296(%rsp)                 # 8-byte Spill
	movq	%r10, 288(%rsp)                 # 8-byte Spill
	movl	%esi, 284(%rsp)                 # 4-byte Spill
	movl	%ecx, 280(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.41:                               # %ok.7
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 276(%rsp)                 # 4-byte Spill
	movq	%rcx, 264(%rsp)                 # 8-byte Spill
# %bb.42:                               # %case.hdr.2
	jmp	.LBB7_43
.LBB7_43:                               # %case.8.2
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB7_46
# %bb.44:                               # %src_gte_br.8.2
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_46
# %bb.45:                               # %src_lte_mc.8.2
	movq	296(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 752(%rsp)
	movq	752(%rsp), %rcx
	movq	%rcx, 768(%rsp)
	movq	%rcx, 256(%rsp)                 # 8-byte Spill
	jmp	.LBB7_51
.LBB7_46:                               # %br_exit.8.2
	jmp	.LBB7_47
.LBB7_47:                               # %case.7.2
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB7_50
# %bb.48:                               # %src_gte_br.7.2
	movl	276(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jg	.LBB7_50
# %bb.49:                               # %src_lte_mc.7.2
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 760(%rsp)
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	movq	%rdx, 248(%rsp)                 # 8-byte Spill
	callq	Bar_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 768(%rsp)
	movq	%rcx, 240(%rsp)                 # 8-byte Spill
	jmp	.LBB7_51
.LBB7_50:                               # %br_exit.7.2
	jmp	.LBB7_59
.LBB7_51:                               # %case.exit.2
	movq	768(%rsp), %rax
	movq	288(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	728(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, %rsi
	addq	$56, %rsi
	movq	848(%rsp), %rdi
	movq	32(%rdi), %r8
	cmpq	$0, %r8
	movq	%r8, 232(%rsp)                  # 8-byte Spill
	movq	%rdi, 224(%rsp)                 # 8-byte Spill
	movq	%rsi, 216(%rsp)                 # 8-byte Spill
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	je	.LBB7_59
# %bb.52:                               # %ok.8
	movq	_Bazz_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	88(%rcx), %rdx
	movq	232(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	movq	%r8, %rdi
	movq	%rsi, 232(%rsp)                 # 8-byte Spill
	movq	%r8, 200(%rsp)                  # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	callq	*%rdx
	movl	%eax, %ecx
	movq	848(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movl	%ecx, 164(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.53:                               # %ok.9
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	164(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	848(%rsp), %r8
	movq	48(%r8), %r9
	cmpq	$0, %r9
	movq	%r9, 144(%rsp)                  # 8-byte Spill
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	movl	%esi, 132(%rsp)                 # 4-byte Spill
	movl	%ecx, 128(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.54:                               # %ok.10
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	132(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	848(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	movl	%esi, 108(%rsp)                 # 4-byte Spill
	movl	%ecx, 104(%rsp)                 # 4-byte Spill
	je	.LBB7_59
# %bb.55:                               # %ok.11
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movl	108(%rsp), %edx                 # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	848(%rsp), %r8
	cmpq	$0, %r8
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movl	%esi, 84(%rsp)                  # 4-byte Spill
	movl	%ecx, 80(%rsp)                  # 4-byte Spill
	je	.LBB7_59
# %bb.56:                               # %ok.12
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	84(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	addl	%ecx, %esi
	movq	216(%rsp), %r8                  # 8-byte Reload
	movl	%esi, (%r8)
	movq	728(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	addq	$60, %r10
	movq	848(%rsp), %r11
	cmpq	$0, %r11
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	movq	%r10, 56(%rsp)                  # 8-byte Spill
	movl	%esi, 52(%rsp)                  # 4-byte Spill
	movl	%ecx, 48(%rsp)                  # 4-byte Spill
	je	.LBB7_59
# %bb.57:                               # %ok.13
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movl	%eax, %ecx
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movl	%ecx, (%rdx)
	movq	728(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, %r8
	addq	$64, %r8
	movq	848(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movl	%ecx, 20(%rsp)                  # 4-byte Spill
	je	.LBB7_59
# %bb.58:                               # %ok.14
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*80(%rdx)
	movl	%eax, %ecx
	movl	%ecx, 16(%rsp)                  # 4-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdi
	movl	16(%rsp), %edx                  # 4-byte Reload
	movl	%edx, %esi
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	callq	Int_init@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	728(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rax
	addq	$856, %rsp                      # imm = 0x358
	.cfi_def_cfa_offset 8
	retq
.LBB7_59:                               # %abort
	.cfi_def_cfa_offset 864
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
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
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
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	cmpq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB9_2
# %bb.1:                                # %okay
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 24(%rdx)
	movq	$0, 32(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
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
