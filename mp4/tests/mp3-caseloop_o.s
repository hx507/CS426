	.text
	.file	"mp3-caseloop_o.ll"
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
	subq	$1352, %rsp                     # imm = 0x548
	.cfi_def_cfa_offset 1360
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 1008(%rsp)
	movl	$0, 1348(%rsp)
	movl	$0, 1344(%rsp)
	movq	%rcx, 1000(%rsp)                # 8-byte Spill
	movq	%rdx, 992(%rsp)                 # 8-byte Spill
	callq	A_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 1336(%rsp)
	movq	%rdx, 984(%rsp)                 # 8-byte Spill
	movq	%rcx, 976(%rsp)                 # 8-byte Spill
	callq	Q_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 1328(%rsp)
	movl	$0, 1324(%rsp)
	movq	%rdx, 968(%rsp)                 # 8-byte Spill
	movq	%rcx, 960(%rsp)                 # 8-byte Spill
.LBB1_1:                                # %loop.0
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$100, 1348(%rsp)
	jge	.LBB1_74
# %bb.2:                                # %true.0
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	1328(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 952(%rsp)                 # 8-byte Spill
	je	.LBB1_156
# %bb.3:                                # %ok.0
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 948(%rsp)                 # 4-byte Spill
	movq	%rcx, 936(%rsp)                 # 8-byte Spill
# %bb.4:                                # %case.hdr.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_5
.LBB1_5:                                # %case.22.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jl	.LBB1_8
# %bb.6:                                # %src_gte_br.22.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_8
# %bb.7:                                # %src_lte_mc.22.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1176(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 928(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$17, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 924(%rsp)                 # 4-byte Spill
	movq	%rcx, 912(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	912(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 912(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_8:                                # %br_exit.22.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_9
.LBB1_9:                                # %case.21.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$21, %eax
	jl	.LBB1_12
# %bb.10:                               # %src_gte_br.21.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_12
# %bb.11:                               # %src_lte_mc.21.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1184(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 904(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$16, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 900(%rsp)                 # 4-byte Spill
	movq	%rcx, 888(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	888(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 888(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_12:                               # %br_exit.21.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %case.20.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$20, %eax
	jl	.LBB1_16
# %bb.14:                               # %src_gte_br.20.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_16
# %bb.15:                               # %src_lte_mc.20.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1192(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 880(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$15, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 876(%rsp)                 # 4-byte Spill
	movq	%rcx, 864(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	864(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 864(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_16:                               # %br_exit.20.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_17
.LBB1_17:                               # %case.19.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$19, %eax
	jl	.LBB1_20
# %bb.18:                               # %src_gte_br.19.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_20
# %bb.19:                               # %src_lte_mc.19.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1200(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 856(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 852(%rsp)                 # 4-byte Spill
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	840(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 840(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_20:                               # %br_exit.19.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               # %case.18.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$18, %eax
	jl	.LBB1_24
# %bb.22:                               # %src_gte_br.18.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_24
# %bb.23:                               # %src_lte_mc.18.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1208(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 832(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$13, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 828(%rsp)                 # 4-byte Spill
	movq	%rcx, 816(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	816(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 816(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_24:                               # %br_exit.18.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_25
.LBB1_25:                               # %case.17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$17, %eax
	jl	.LBB1_28
# %bb.26:                               # %src_gte_br.17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_28
# %bb.27:                               # %src_lte_mc.17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1216(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 808(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$12, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 804(%rsp)                 # 4-byte Spill
	movq	%rcx, 792(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	792(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 792(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_28:                               # %br_exit.17.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_29
.LBB1_29:                               # %case.16.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$16, %eax
	jl	.LBB1_32
# %bb.30:                               # %src_gte_br.16.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_32
# %bb.31:                               # %src_lte_mc.16.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1224(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 784(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$11, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 780(%rsp)                 # 4-byte Spill
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	768(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 768(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_32:                               # %br_exit.16.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_33
.LBB1_33:                               # %case.15.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$15, %eax
	jl	.LBB1_36
# %bb.34:                               # %src_gte_br.15.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_36
# %bb.35:                               # %src_lte_mc.15.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1232(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 760(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$10, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 756(%rsp)                 # 4-byte Spill
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	744(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 744(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_36:                               # %br_exit.15.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_37
.LBB1_37:                               # %case.14.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$14, %eax
	jl	.LBB1_40
# %bb.38:                               # %src_gte_br.14.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_40
# %bb.39:                               # %src_lte_mc.14.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1240(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 736(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$9, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 732(%rsp)                 # 4-byte Spill
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	720(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 720(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_40:                               # %br_exit.14.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_41
.LBB1_41:                               # %case.13.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$13, %eax
	jl	.LBB1_44
# %bb.42:                               # %src_gte_br.13.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_44
# %bb.43:                               # %src_lte_mc.13.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1248(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 712(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$8, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 708(%rsp)                 # 4-byte Spill
	movq	%rcx, 696(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	696(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 696(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_44:                               # %br_exit.13.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_45
.LBB1_45:                               # %case.12.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$12, %eax
	jl	.LBB1_48
# %bb.46:                               # %src_gte_br.12.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_48
# %bb.47:                               # %src_lte_mc.12.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1256(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 688(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$7, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 684(%rsp)                 # 4-byte Spill
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	672(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 672(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_48:                               # %br_exit.12.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_49
.LBB1_49:                               # %case.11.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$11, %eax
	jl	.LBB1_52
# %bb.50:                               # %src_gte_br.11.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_52
# %bb.51:                               # %src_lte_mc.11.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1264(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 664(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$6, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 660(%rsp)                 # 4-byte Spill
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	648(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 648(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_52:                               # %br_exit.11.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_53
.LBB1_53:                               # %case.10.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$10, %eax
	jl	.LBB1_56
# %bb.54:                               # %src_gte_br.10.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_56
# %bb.55:                               # %src_lte_mc.10.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1272(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 640(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$5, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 636(%rsp)                 # 4-byte Spill
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	624(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 624(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_56:                               # %br_exit.10.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_57
.LBB1_57:                               # %case.9.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$9, %eax
	jl	.LBB1_60
# %bb.58:                               # %src_gte_br.9.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_60
# %bb.59:                               # %src_lte_mc.9.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1280(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 616(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$4, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 612(%rsp)                 # 4-byte Spill
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	600(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 600(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_60:                               # %br_exit.9.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_61
.LBB1_61:                               # %case.8.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB1_64
# %bb.62:                               # %src_gte_br.8.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_64
# %bb.63:                               # %src_lte_mc.8.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1288(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 592(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$3, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 588(%rsp)                 # 4-byte Spill
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	576(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 576(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_64:                               # %br_exit.8.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_65
.LBB1_65:                               # %case.7.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB1_68
# %bb.66:                               # %src_gte_br.7.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_68
# %bb.67:                               # %src_lte_mc.7.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1296(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 568(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$2, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 564(%rsp)                 # 4-byte Spill
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	552(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 552(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_68:                               # %br_exit.7.1
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_69
.LBB1_69:                               # %case.6.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB1_72
# %bb.70:                               # %src_gte_br.6.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movl	948(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_72
# %bb.71:                               # %src_lte_mc.6.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	952(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1304(%rsp)
	movq	%rcx, 952(%rsp)                 # 8-byte Spill
	movq	%rdx, 544(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 540(%rsp)                 # 4-byte Spill
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	528(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1312(%rsp)
	movq	%rcx, 528(%rsp)                 # 8-byte Spill
	jmp	.LBB1_73
.LBB1_72:                               # %br_exit.6.1
	jmp	.LBB1_156
.LBB1_73:                               # %case.exit.1
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	1312(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 1324(%rsp)
	movl	1348(%rsp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 1348(%rsp)
	movl	%esi, 524(%rsp)                 # 4-byte Spill
	movl	%edx, 520(%rsp)                 # 4-byte Spill
	movl	%ecx, 516(%rsp)                 # 4-byte Spill
	movq	%rax, 504(%rsp)                 # 8-byte Spill
	jmp	.LBB1_1
.LBB1_74:                               # %false.0
	cmpl	$17, 1324(%rsp)
	sete	%al
	movb	%al, %cl
	xorb	$-1, %cl
	testb	$1, %cl
	movb	%cl, 503(%rsp)                  # 1-byte Spill
	movb	%al, 502(%rsp)                  # 1-byte Spill
	jne	.LBB1_75
	jmp	.LBB1_76
.LBB1_75:                               # %true.2
	movl	1344(%rsp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 1344(%rsp)
	movl	%ecx, 1172(%rsp)
	movl	%ecx, 496(%rsp)                 # 4-byte Spill
	movl	%eax, 492(%rsp)                 # 4-byte Spill
	jmp	.LBB1_77
.LBB1_76:                               # %false.2
	movl	$0, 1172(%rsp)
.LBB1_77:                               # %end.2
	movl	$0, 1348(%rsp)
.LBB1_78:                               # %loop.3
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, 1348(%rsp)
	jge	.LBB1_151
# %bb.79:                               # %true.3
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	1336(%rsp), %rax
	cmpq	$0, %rax
	movq	%rax, 480(%rsp)                 # 8-byte Spill
	je	.LBB1_156
# %bb.80:                               # %ok.1
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 476(%rsp)                 # 4-byte Spill
	movq	%rcx, 464(%rsp)                 # 8-byte Spill
# %bb.81:                               # %case.hdr.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_82
.LBB1_82:                               # %case.22.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jl	.LBB1_85
# %bb.83:                               # %src_gte_br.22.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_85
# %bb.84:                               # %src_lte_mc.22.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1024(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 456(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$17, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 452(%rsp)                 # 4-byte Spill
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	440(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 440(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_85:                               # %br_exit.22.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_86
.LBB1_86:                               # %case.21.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$21, %eax
	jl	.LBB1_89
# %bb.87:                               # %src_gte_br.21.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_89
# %bb.88:                               # %src_lte_mc.21.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1032(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 432(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$16, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 428(%rsp)                 # 4-byte Spill
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	416(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 416(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_89:                               # %br_exit.21.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_90
.LBB1_90:                               # %case.20.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$20, %eax
	jl	.LBB1_93
# %bb.91:                               # %src_gte_br.20.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_93
# %bb.92:                               # %src_lte_mc.20.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1040(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 408(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$15, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 404(%rsp)                 # 4-byte Spill
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	392(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 392(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_93:                               # %br_exit.20.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_94
.LBB1_94:                               # %case.19.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$19, %eax
	jl	.LBB1_97
# %bb.95:                               # %src_gte_br.19.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_97
# %bb.96:                               # %src_lte_mc.19.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1048(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 384(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$14, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 380(%rsp)                 # 4-byte Spill
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	368(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 368(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_97:                               # %br_exit.19.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_98
.LBB1_98:                               # %case.18.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$18, %eax
	jl	.LBB1_101
# %bb.99:                               # %src_gte_br.18.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_101
# %bb.100:                              # %src_lte_mc.18.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1056(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 360(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$13, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 356(%rsp)                 # 4-byte Spill
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	344(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 344(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_101:                              # %br_exit.18.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_102
.LBB1_102:                              # %case.17.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$17, %eax
	jl	.LBB1_105
# %bb.103:                              # %src_gte_br.17.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_105
# %bb.104:                              # %src_lte_mc.17.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1064(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 336(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$12, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 332(%rsp)                 # 4-byte Spill
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	320(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 320(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_105:                              # %br_exit.17.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_106
.LBB1_106:                              # %case.16.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$16, %eax
	jl	.LBB1_109
# %bb.107:                              # %src_gte_br.16.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_109
# %bb.108:                              # %src_lte_mc.16.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1072(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 312(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$11, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 308(%rsp)                 # 4-byte Spill
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	296(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 296(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_109:                              # %br_exit.16.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_110
.LBB1_110:                              # %case.15.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$15, %eax
	jl	.LBB1_113
# %bb.111:                              # %src_gte_br.15.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_113
# %bb.112:                              # %src_lte_mc.15.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1080(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 288(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$10, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 284(%rsp)                 # 4-byte Spill
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	272(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 272(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_113:                              # %br_exit.15.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_114
.LBB1_114:                              # %case.14.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$14, %eax
	jl	.LBB1_117
# %bb.115:                              # %src_gte_br.14.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_117
# %bb.116:                              # %src_lte_mc.14.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1088(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 264(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$9, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 260(%rsp)                 # 4-byte Spill
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	248(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 248(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_117:                              # %br_exit.14.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_118
.LBB1_118:                              # %case.13.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$13, %eax
	jl	.LBB1_121
# %bb.119:                              # %src_gte_br.13.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_121
# %bb.120:                              # %src_lte_mc.13.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1096(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$8, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 236(%rsp)                 # 4-byte Spill
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	224(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 224(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_121:                              # %br_exit.13.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_122
.LBB1_122:                              # %case.12.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$12, %eax
	jl	.LBB1_125
# %bb.123:                              # %src_gte_br.12.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_125
# %bb.124:                              # %src_lte_mc.12.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1104(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 216(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$7, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 212(%rsp)                 # 4-byte Spill
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_125:                              # %br_exit.12.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_126
.LBB1_126:                              # %case.11.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$11, %eax
	jl	.LBB1_129
# %bb.127:                              # %src_gte_br.11.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_129
# %bb.128:                              # %src_lte_mc.11.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1112(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 192(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$6, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 188(%rsp)                 # 4-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	176(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_129:                              # %br_exit.11.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_130
.LBB1_130:                              # %case.10.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$10, %eax
	jl	.LBB1_133
# %bb.131:                              # %src_gte_br.10.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_133
# %bb.132:                              # %src_lte_mc.10.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1120(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$5, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 164(%rsp)                 # 4-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	152(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_133:                              # %br_exit.10.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_134
.LBB1_134:                              # %case.9.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$9, %eax
	jl	.LBB1_137
# %bb.135:                              # %src_gte_br.9.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_137
# %bb.136:                              # %src_lte_mc.9.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1128(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$4, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 140(%rsp)                 # 4-byte Spill
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_137:                              # %br_exit.9.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_138
.LBB1_138:                              # %case.8.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$8, %eax
	jl	.LBB1_141
# %bb.139:                              # %src_gte_br.8.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_141
# %bb.140:                              # %src_lte_mc.8.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1136(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$3, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 116(%rsp)                 # 4-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	callq	Int_init@PLT
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB1_150
.LBB1_141:                              # %br_exit.8.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_142
.LBB1_142:                              # %case.7.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$7, %eax
	jl	.LBB1_145
# %bb.143:                              # %src_gte_br.7.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_145
# %bb.144:                              # %src_lte_mc.7.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1144(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$2, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 92(%rsp)                  # 4-byte Spill
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	callq	Int_init@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB1_150
.LBB1_145:                              # %br_exit.7.4
                                        #   in Loop: Header=BB1_78 Depth=1
	jmp	.LBB1_146
.LBB1_146:                              # %case.6.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB1_149
# %bb.147:                              # %src_gte_br.6.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movl	476(%rsp), %eax                 # 4-byte Reload
	cmpl	$22, %eax
	jg	.LBB1_149
# %bb.148:                              # %src_lte_mc.6.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	480(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, %rdx
	movq	%rdx, 1152(%rsp)
	movq	%rcx, 480(%rsp)                 # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	Int_new@PLT
	movq	%rax, %rcx
	movl	$1, %edx
	movq	%rcx, %rdi
	movl	%edx, %esi
	movl	%edx, 68(%rsp)                  # 4-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	callq	Int_init@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 1160(%rsp)
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	jmp	.LBB1_150
.LBB1_149:                              # %br_exit.6.4
	jmp	.LBB1_156
.LBB1_150:                              # %case.exit.4
                                        #   in Loop: Header=BB1_78 Depth=1
	movq	1160(%rsp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, 1324(%rsp)
	movl	1348(%rsp), %edx
	movl	%edx, %esi
	addl	$1, %esi
	movl	%esi, 1348(%rsp)
	movl	%esi, 52(%rsp)                  # 4-byte Spill
	movl	%edx, 48(%rsp)                  # 4-byte Spill
	movl	%ecx, 44(%rsp)                  # 4-byte Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	jmp	.LBB1_78
.LBB1_151:                              # %false.3
	cmpl	$1, 1324(%rsp)
	sete	%al
	movb	%al, %cl
	xorb	$-1, %cl
	testb	$1, %cl
	movb	%cl, 31(%rsp)                   # 1-byte Spill
	movb	%al, 30(%rsp)                   # 1-byte Spill
	jne	.LBB1_152
	jmp	.LBB1_153
.LBB1_152:                              # %true.5
	movl	1344(%rsp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, 1344(%rsp)
	movl	%ecx, 1020(%rsp)
	movl	%ecx, 24(%rsp)                  # 4-byte Spill
	movl	%eax, 20(%rsp)                  # 4-byte Spill
	jmp	.LBB1_154
.LBB1_153:                              # %false.5
	movl	$0, 1020(%rsp)
.LBB1_154:                              # %end.5
	movl	1344(%rsp), %eax
	movq	1008(%rsp), %rcx
	cmpq	$0, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	%eax, 4(%rsp)                   # 4-byte Spill
	je	.LBB1_156
# %bb.155:                              # %ok.2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movl	4(%rsp), %ecx                   # 4-byte Reload
	movl	%ecx, %esi
	callq	*56(%rdx)
                                        # kill: def $rcx killed $rax
	movq	1008(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	addq	$1352, %rsp                     # imm = 0x548
	.cfi_def_cfa_offset 8
	retq
.LBB1_156:                              # %abort
	.cfi_def_cfa_offset 1360
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
	.globl	B_new                           # -- Begin function B_new
	.p2align	4, 0x90
	.type	B_new,@function
B_new:                                  # @B_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	_B_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end4:
	.size	B_new, .Lfunc_end4-B_new
	.cfi_endproc
                                        # -- End function
	.globl	C_new                           # -- Begin function C_new
	.p2align	4, 0x90
	.type	C_new,@function
C_new:                                  # @C_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_C_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB5_2
# %bb.1:                                # %okay
	movq	_C_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end5:
	.size	C_new, .Lfunc_end5-C_new
	.cfi_endproc
                                        # -- End function
	.globl	D_new                           # -- Begin function D_new
	.p2align	4, 0x90
	.type	D_new,@function
D_new:                                  # @D_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_D_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_D_vtable_prototype@GOTPCREL(%rip), %rcx
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
	.size	D_new, .Lfunc_end6-D_new
	.cfi_endproc
                                        # -- End function
	.globl	E_new                           # -- Begin function E_new
	.p2align	4, 0x90
	.type	E_new,@function
E_new:                                  # @E_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_E_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_E_vtable_prototype@GOTPCREL(%rip), %rcx
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
	.size	E_new, .Lfunc_end7-E_new
	.cfi_endproc
                                        # -- End function
	.globl	F_new                           # -- Begin function F_new
	.p2align	4, 0x90
	.type	F_new,@function
F_new:                                  # @F_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_F_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB8_2
# %bb.1:                                # %okay
	movq	_F_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB8_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end8:
	.size	F_new, .Lfunc_end8-F_new
	.cfi_endproc
                                        # -- End function
	.globl	G_new                           # -- Begin function G_new
	.p2align	4, 0x90
	.type	G_new,@function
G_new:                                  # @G_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_G_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_G_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end9:
	.size	G_new, .Lfunc_end9-G_new
	.cfi_endproc
                                        # -- End function
	.globl	H_new                           # -- Begin function H_new
	.p2align	4, 0x90
	.type	H_new,@function
H_new:                                  # @H_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_H_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB10_2
# %bb.1:                                # %okay
	movq	_H_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end10:
	.size	H_new, .Lfunc_end10-H_new
	.cfi_endproc
                                        # -- End function
	.globl	I_new                           # -- Begin function I_new
	.p2align	4, 0x90
	.type	I_new,@function
I_new:                                  # @I_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_I_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB11_2
# %bb.1:                                # %okay
	movq	_I_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end11:
	.size	I_new, .Lfunc_end11-I_new
	.cfi_endproc
                                        # -- End function
	.globl	J_new                           # -- Begin function J_new
	.p2align	4, 0x90
	.type	J_new,@function
J_new:                                  # @J_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_J_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB12_2
# %bb.1:                                # %okay
	movq	_J_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end12:
	.size	J_new, .Lfunc_end12-J_new
	.cfi_endproc
                                        # -- End function
	.globl	K_new                           # -- Begin function K_new
	.p2align	4, 0x90
	.type	K_new,@function
K_new:                                  # @K_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_K_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB13_2
# %bb.1:                                # %okay
	movq	_K_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB13_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end13:
	.size	K_new, .Lfunc_end13-K_new
	.cfi_endproc
                                        # -- End function
	.globl	L_new                           # -- Begin function L_new
	.p2align	4, 0x90
	.type	L_new,@function
L_new:                                  # @L_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_L_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB14_2
# %bb.1:                                # %okay
	movq	_L_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end14:
	.size	L_new, .Lfunc_end14-L_new
	.cfi_endproc
                                        # -- End function
	.globl	M_new                           # -- Begin function M_new
	.p2align	4, 0x90
	.type	M_new,@function
M_new:                                  # @M_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_M_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB15_2
# %bb.1:                                # %okay
	movq	_M_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB15_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end15:
	.size	M_new, .Lfunc_end15-M_new
	.cfi_endproc
                                        # -- End function
	.globl	N_new                           # -- Begin function N_new
	.p2align	4, 0x90
	.type	N_new,@function
N_new:                                  # @N_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_N_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB16_2
# %bb.1:                                # %okay
	movq	_N_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB16_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end16:
	.size	N_new, .Lfunc_end16-N_new
	.cfi_endproc
                                        # -- End function
	.globl	O_new                           # -- Begin function O_new
	.p2align	4, 0x90
	.type	O_new,@function
O_new:                                  # @O_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_O_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB17_2
# %bb.1:                                # %okay
	movq	_O_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB17_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end17:
	.size	O_new, .Lfunc_end17-O_new
	.cfi_endproc
                                        # -- End function
	.globl	P_new                           # -- Begin function P_new
	.p2align	4, 0x90
	.type	P_new,@function
P_new:                                  # @P_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_P_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB18_2
# %bb.1:                                # %okay
	movq	_P_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB18_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end18:
	.size	P_new, .Lfunc_end18-P_new
	.cfi_endproc
                                        # -- End function
	.globl	Q_new                           # -- Begin function Q_new
	.p2align	4, 0x90
	.type	Q_new,@function
Q_new:                                  # @Q_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Q_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB19_2
# %bb.1:                                # %okay
	movq	_Q_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB19_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end19:
	.size	Q_new, .Lfunc_end19-Q_new
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

	.type	str.C,@object                   # @str.C
str.C:
	.asciz	"C"
	.size	str.C, 2

	.type	_C_vtable_prototype,@object     # @_C_vtable_prototype
	.globl	_C_vtable_prototype
	.p2align	4
_C_vtable_prototype:
	.long	8                               # 0x8
	.long	0+8
	.quad	str.C
	.quad	C_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_C_vtable_prototype, 48

	.type	str.D,@object                   # @str.D
str.D:
	.asciz	"D"
	.size	str.D, 2

	.type	_D_vtable_prototype,@object     # @_D_vtable_prototype
	.globl	_D_vtable_prototype
	.p2align	4
_D_vtable_prototype:
	.long	9                               # 0x9
	.long	0+8
	.quad	str.D
	.quad	D_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_D_vtable_prototype, 48

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

	.type	str.G,@object                   # @str.G
str.G:
	.asciz	"G"
	.size	str.G, 2

	.type	_G_vtable_prototype,@object     # @_G_vtable_prototype
	.globl	_G_vtable_prototype
	.p2align	4
_G_vtable_prototype:
	.long	12                              # 0xc
	.long	0+8
	.quad	str.G
	.quad	G_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_G_vtable_prototype, 48

	.type	str.H,@object                   # @str.H
str.H:
	.asciz	"H"
	.size	str.H, 2

	.type	_H_vtable_prototype,@object     # @_H_vtable_prototype
	.globl	_H_vtable_prototype
	.p2align	4
_H_vtable_prototype:
	.long	13                              # 0xd
	.long	0+8
	.quad	str.H
	.quad	H_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_H_vtable_prototype, 48

	.type	str.I,@object                   # @str.I
str.I:
	.asciz	"I"
	.size	str.I, 2

	.type	_I_vtable_prototype,@object     # @_I_vtable_prototype
	.globl	_I_vtable_prototype
	.p2align	4
_I_vtable_prototype:
	.long	14                              # 0xe
	.long	0+8
	.quad	str.I
	.quad	I_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_I_vtable_prototype, 48

	.type	str.J,@object                   # @str.J
str.J:
	.asciz	"J"
	.size	str.J, 2

	.type	_J_vtable_prototype,@object     # @_J_vtable_prototype
	.globl	_J_vtable_prototype
	.p2align	4
_J_vtable_prototype:
	.long	15                              # 0xf
	.long	0+8
	.quad	str.J
	.quad	J_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_J_vtable_prototype, 48

	.type	str.K,@object                   # @str.K
str.K:
	.asciz	"K"
	.size	str.K, 2

	.type	_K_vtable_prototype,@object     # @_K_vtable_prototype
	.globl	_K_vtable_prototype
	.p2align	4
_K_vtable_prototype:
	.long	16                              # 0x10
	.long	0+8
	.quad	str.K
	.quad	K_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_K_vtable_prototype, 48

	.type	str.L,@object                   # @str.L
str.L:
	.asciz	"L"
	.size	str.L, 2

	.type	_L_vtable_prototype,@object     # @_L_vtable_prototype
	.globl	_L_vtable_prototype
	.p2align	4
_L_vtable_prototype:
	.long	17                              # 0x11
	.long	0+8
	.quad	str.L
	.quad	L_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_L_vtable_prototype, 48

	.type	str.M,@object                   # @str.M
str.M:
	.asciz	"M"
	.size	str.M, 2

	.type	_M_vtable_prototype,@object     # @_M_vtable_prototype
	.globl	_M_vtable_prototype
	.p2align	4
_M_vtable_prototype:
	.long	18                              # 0x12
	.long	0+8
	.quad	str.M
	.quad	M_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_M_vtable_prototype, 48

	.type	str.N,@object                   # @str.N
str.N:
	.asciz	"N"
	.size	str.N, 2

	.type	_N_vtable_prototype,@object     # @_N_vtable_prototype
	.globl	_N_vtable_prototype
	.p2align	4
_N_vtable_prototype:
	.long	19                              # 0x13
	.long	0+8
	.quad	str.N
	.quad	N_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_N_vtable_prototype, 48

	.type	str.O,@object                   # @str.O
str.O:
	.asciz	"O"
	.size	str.O, 2

	.type	_O_vtable_prototype,@object     # @_O_vtable_prototype
	.globl	_O_vtable_prototype
	.p2align	4
_O_vtable_prototype:
	.long	20                              # 0x14
	.long	0+8
	.quad	str.O
	.quad	O_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_O_vtable_prototype, 48

	.type	str.P,@object                   # @str.P
str.P:
	.asciz	"P"
	.size	str.P, 2

	.type	_P_vtable_prototype,@object     # @_P_vtable_prototype
	.globl	_P_vtable_prototype
	.p2align	4
_P_vtable_prototype:
	.long	21                              # 0x15
	.long	0+8
	.quad	str.P
	.quad	P_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_P_vtable_prototype, 48

	.type	str.Q,@object                   # @str.Q
str.Q:
	.asciz	"Q"
	.size	str.Q, 2

	.type	_Q_vtable_prototype,@object     # @_Q_vtable_prototype
	.globl	_Q_vtable_prototype
	.p2align	4
_Q_vtable_prototype:
	.long	22                              # 0x16
	.long	0+8
	.quad	str.Q
	.quad	Q_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.size	_Q_vtable_prototype, 48

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
	.asciz	"caseloop_o.cl"
	.size	str.0, 14

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
