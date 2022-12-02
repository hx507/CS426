	.text
	.file	"mp3-book_list.ll"
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
	.globl	Book.initBook                   # -- Begin function Book.initBook
	.p2align	4, 0x90
	.type	Book.initBook,@function
Book.initBook:                          # @Book.initBook
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %rcx
	movq	%rsi, %r8
	movq	%rdi, %r9
	movq	%r9, %r10
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%r10, -8(%rsp)
	movq	%r9, -16(%rsp)
	movq	%r8, -24(%rsp)
	movq	-16(%rsp), %rcx
	movq	-8(%rsp), %r8
	movq	%rcx, 8(%r8)
	movq	-24(%rsp), %rcx
	movq	-8(%rsp), %r8
	movq	%rcx, 16(%r8)
	movq	-8(%rsp), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end1:
	.size	Book.initBook, .Lfunc_end1-Book.initBook
	.cfi_endproc
                                        # -- End function
	.globl	Book.getSelf                    # -- Begin function Book.getSelf
	.p2align	4, 0x90
	.type	Book.getSelf,@function
Book.getSelf:                           # @Book.getSelf
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end2:
	.size	Book.getSelf, .Lfunc_end2-Book.getSelf
	.cfi_endproc
                                        # -- End function
	.globl	Book.print                      # -- Begin function Book.print
	.p2align	4, 0x90
	.type	Book.print,@function
Book.print:                             # @Book.print
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$200, %rsp
	.cfi_def_cfa_offset 208
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rax, %r8
	movq	%rdx, 192(%rsp)
	movq	%r8, 184(%rsp)
	movq	192(%rsp), %r9
	movq	8(%r9), %r10
	movq	184(%rsp), %r11
	cmpq	$0, %r11
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%r11, 144(%rsp)                 # 8-byte Spill
	movq	%r10, 136(%rsp)                 # 8-byte Spill
	movq	%r9, 128(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.1:                                # %ok.2
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.1@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	je	.LBB3_7
# %bb.2:                                # %ok.1
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	136(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.3:                                # %ok.0
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 184(%rsp)
	movq	192(%rsp), %rdx
	movq	16(%rdx), %r8
	movq	184(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.4:                                # %ok.5
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.3@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.5:                                # %ok.4
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB3_7
# %bb.6:                                # %ok.3
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$200, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_7:                                # %abort
	.cfi_def_cfa_offset 208
	callq	abort@PLT
.Lfunc_end3:
	.size	Book.print, .Lfunc_end3-Book.print
	.cfi_endproc
                                        # -- End function
	.globl	Book_new                        # -- Begin function Book_new
	.p2align	4, 0x90
	.type	Book_new,@function
Book_new:                               # @Book_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end4:
	.size	Book_new, .Lfunc_end4-Book_new
	.cfi_endproc
                                        # -- End function
	.globl	Article.initArticle             # -- Begin function Article.initArticle
	.p2align	4, 0x90
	.type	Article.initArticle,@function
Article.initArticle:                    # @Article.initArticle
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rax
	movq	%rdx, %r8
	movq	%rsi, %r9
	movq	%rdi, %r10
	movq	%r10, %r11
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rax, %r15
	movq	%r11, 112(%rsp)
	movq	%rbx, 104(%rsp)
	movq	%r14, 96(%rsp)
	movq	%r15, 88(%rsp)
	movq	104(%rsp), %r12
	movq	96(%rsp), %r13
	movq	112(%rsp), %rbp
	cmpq	$0, %rbp
	movq	%r10, 80(%rsp)                  # 8-byte Spill
	movq	%r11, 72(%rsp)                  # 8-byte Spill
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	%r12, (%rsp)                    # 8-byte Spill
	je	.LBB5_2
# %bb.1:                                # %ok.0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	%rcx, %rdi
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	%rcx, %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rdx
	callq	*80(%r8)
                                        # kill: def $rcx killed $rax
	movq	88(%rsp), %rcx
	movq	112(%rsp), %r8
	movq	%rcx, 24(%r8)
	movq	112(%rsp), %rcx
	movq	%rcx, %rax
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 176
	callq	abort@PLT
.Lfunc_end5:
	.size	Article.initArticle, .Lfunc_end5-Article.initArticle
	.cfi_endproc
                                        # -- End function
	.globl	Article.getSelf                 # -- Begin function Article.getSelf
	.p2align	4, 0x90
	.type	Article.getSelf,@function
Article.getSelf:                        # @Article.getSelf
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	%rcx, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end6:
	.size	Article.getSelf, .Lfunc_end6-Article.getSelf
	.cfi_endproc
                                        # -- End function
	.globl	Article.print                   # -- Begin function Article.print
	.p2align	4, 0x90
	.type	Article.print,@function
Article.print:                          # @Article.print
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rax, %r8
	movq	%rdx, 160(%rsp)
	movq	%r8, 152(%rsp)
	movq	152(%rsp), %r9
	movq	160(%rsp), %r10
	cmpq	$0, %r10
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%r10, 112(%rsp)                 # 8-byte Spill
	movq	%r9, 104(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.1:                                # %ok.1
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	96(%rcx), %rdx
	movq	112(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %r9
	movq	%r9, %rdi
	movq	104(%rsp), %r10                 # 8-byte Reload
	movq	%r10, %rsi
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	movq	%r10, 104(%rsp)                 # 8-byte Spill
	movq	%r9, 96(%rsp)                   # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	callq	*%rdx
	movq	%rax, %rcx
	movq	%rcx, 152(%rsp)
	movq	160(%rsp), %rdx
	movq	24(%rdx), %r8
	movq	152(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.2:                                # %ok.4
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.4@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.3:                                # %ok.3
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB7_5
# %bb.4:                                # %ok.2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_5:                                # %abort
	.cfi_def_cfa_offset 176
	callq	abort@PLT
.Lfunc_end7:
	.size	Article.print, .Lfunc_end7-Article.print
	.cfi_endproc
                                        # -- End function
	.globl	Article_new                     # -- Begin function Article_new
	.p2align	4, 0x90
	.type	Article_new,@function
Article_new:                            # @Article_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Article_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_Article_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 24(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 8(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 16(%rdx)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	callq	String_new@PLT
	movq	%rax, %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, 24(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB8_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end8:
	.size	Article_new, .Lfunc_end8-Article_new
	.cfi_endproc
                                        # -- End function
	.globl	BookList.isNil                  # -- Begin function BookList.isNil
	.p2align	4, 0x90
	.type	BookList.isNil,@function
BookList.isNil:                         # @BookList.isNil
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_2
# %bb.1:                                # %ok.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	24(%rdx), %rsi
	movq	%rcx, %rdi
	callq	*%rsi
                                        # kill: def $rcx killed $rax
	movb	$1, %cl
	movb	%cl, %al
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end9:
	.size	BookList.isNil, .Lfunc_end9-BookList.isNil
	.cfi_endproc
                                        # -- End function
	.globl	BookList.cons                   # -- Begin function BookList.cons
	.p2align	4, 0x90
	.type	BookList.cons,@function
BookList.cons:                          # @BookList.cons
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movq	%rcx, %r9
	movq	%r8, 72(%rsp)
	movq	%r9, 64(%rsp)
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	callq	Cons_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	movq	64(%rsp), %rdx
	movq	72(%rsp), %r8
	movq	80(%rsp), %r9
	cmpq	$0, %r9
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB10_2
# %bb.1:                                # %ok.1
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	%rcx, %rdi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	%rcx, %rsi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdx
	callq	*120(%r8)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %abort
	.cfi_def_cfa_offset 96
	callq	abort@PLT
.Lfunc_end10:
	.size	BookList.cons, .Lfunc_end10-BookList.cons
	.cfi_endproc
                                        # -- End function
	.globl	BookList.car                    # -- Begin function BookList.car
	.p2align	4, 0x90
	.type	BookList.car,@function
BookList.car:                           # @BookList.car
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB11_2
# %bb.1:                                # %ok.2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*24(%rdx)
                                        # kill: def $rcx killed $rax
	callq	Book_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end11:
	.size	BookList.car, .Lfunc_end11-BookList.car
	.cfi_endproc
                                        # -- End function
	.globl	BookList.cdr                    # -- Begin function BookList.cdr
	.p2align	4, 0x90
	.type	BookList.cdr,@function
BookList.cdr:                           # @BookList.cdr
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rax
	movq	%rax, %rcx
	movq	%rcx, 32(%rsp)
	movq	32(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	je	.LBB12_2
# %bb.1:                                # %ok.3
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*24(%rdx)
                                        # kill: def $rcx killed $rax
	callq	BookList_new@PLT
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end12:
	.size	BookList.cdr, .Lfunc_end12-BookList.cdr
	.cfi_endproc
                                        # -- End function
	.globl	BookList.print_list             # -- Begin function BookList.print_list
	.p2align	4, 0x90
	.type	BookList.print_list,@function
BookList.print_list:                    # @BookList.print_list
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%r8, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movq	String.5@GOTPCREL(%rip), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end13:
	.size	BookList.print_list, .Lfunc_end13-BookList.print_list
	.cfi_endproc
                                        # -- End function
	.globl	BookList_new                    # -- Begin function BookList_new
	.p2align	4, 0x90
	.type	BookList_new,@function
BookList_new:                           # @BookList_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_BookList_vtable_prototype@GOTPCREL(%rip), %rcx
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
	movq	_BookList_vtable_prototype@GOTPCREL(%rip), %rcx
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
	.size	BookList_new, .Lfunc_end14-BookList_new
	.cfi_endproc
                                        # -- End function
	.globl	Cons.isNil                      # -- Begin function Cons.isNil
	.p2align	4, 0x90
	.type	Cons.isNil,@function
Cons.isNil:                             # @Cons.isNil
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	retq
.Lfunc_end15:
	.size	Cons.isNil, .Lfunc_end15-Cons.isNil
	.cfi_endproc
                                        # -- End function
	.globl	Cons.init                       # -- Begin function Cons.init
	.p2align	4, 0x90
	.type	Cons.init,@function
Cons.init:                              # @Cons.init
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdx, %rcx
	movq	%rsi, %r8
	movq	%rdi, %r9
	movq	%r9, %r10
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%r10, -8(%rsp)
	movq	%r9, -16(%rsp)
	movq	%r8, -24(%rsp)
	movq	-16(%rsp), %rcx
	movq	-8(%rsp), %r8
	movq	%rcx, 8(%r8)
	movq	-24(%rsp), %rcx
	movq	-8(%rsp), %r8
	movq	%rcx, 16(%r8)
	movq	-8(%rsp), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end16:
	.size	Cons.init, .Lfunc_end16-Cons.init
	.cfi_endproc
                                        # -- End function
	.globl	Cons.car                        # -- Begin function Cons.car
	.p2align	4, 0x90
	.type	Cons.car,@function
Cons.car:                               # @Cons.car
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	8(%rcx), %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end17:
	.size	Cons.car, .Lfunc_end17-Cons.car
	.cfi_endproc
                                        # -- End function
	.globl	Cons.cdr                        # -- Begin function Cons.cdr
	.p2align	4, 0x90
	.type	Cons.cdr,@function
Cons.cdr:                               # @Cons.cdr
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movq	-8(%rsp), %rcx
	movq	16(%rcx), %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end18:
	.size	Cons.cdr, .Lfunc_end18-Cons.cdr
	.cfi_endproc
                                        # -- End function
	.globl	Cons.print_list                 # -- Begin function Cons.print_list
	.p2align	4, 0x90
	.type	Cons.print_list,@function
Cons.print_list:                        # @Cons.print_list
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 288
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rax, %r8
	movq	%rdx, 248(%rsp)
	movq	%r8, 240(%rsp)
	movq	240(%rsp), %r9
	movq	248(%rsp), %r10
	movq	8(%r10), %r11
	cmpq	$0, %r11
	movq	%rcx, 232(%rsp)                 # 8-byte Spill
	movq	%rdx, 224(%rsp)                 # 8-byte Spill
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	%r8, 208(%rsp)                  # 8-byte Spill
	movq	%r11, 200(%rsp)                 # 8-byte Spill
	movq	%r10, 192(%rsp)                 # 8-byte Spill
	movq	%r9, 184(%rsp)                  # 8-byte Spill
	je	.LBB19_17
# %bb.1:                                # %ok.0
	movq	200(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	184(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%rcx, 200(%rsp)                 # 8-byte Spill
	movq	%r8, 184(%rsp)                  # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	callq	*96(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 240(%rsp)
	movq	248(%rsp), %rdx
	movq	8(%rdx), %r8
	cmpq	$0, %r8
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	je	.LBB19_17
# %bb.2:                                # %ok.1
	movq	168(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 168(%rsp)                 # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	je	.LBB19_17
# %bb.3:                                # %ok.2
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	movl	%edx, 132(%rsp)                 # 4-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
# %bb.4:                                # %case.hdr.0
	jmp	.LBB19_5
.LBB19_5:                               # %case.6.0
	movl	132(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jl	.LBB19_9
# %bb.6:                                # %src_gte_br.6.0
	movl	132(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jg	.LBB19_9
# %bb.7:                                # %src_lte_mc.6.0
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 256(%rsp)
	movq	240(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	je	.LBB19_17
# %bb.8:                                # %ok.3
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.7@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 272(%rsp)
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	jmp	.LBB19_15
.LBB19_9:                               # %br_exit.6.0
	jmp	.LBB19_10
.LBB19_10:                              # %case.5.0
	movl	132(%rsp), %eax                 # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB19_14
# %bb.11:                               # %src_gte_br.5.0
	movl	132(%rsp), %eax                 # 4-byte Reload
	cmpl	$6, %eax
	jg	.LBB19_14
# %bb.12:                               # %src_lte_mc.5.0
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movq	%rcx, 264(%rsp)
	movq	240(%rsp), %rdx
	cmpq	$0, %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	je	.LBB19_17
# %bb.13:                               # %ok.4
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.6@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 272(%rsp)
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	jmp	.LBB19_15
.LBB19_14:                              # %br_exit.5.0
	jmp	.LBB19_17
.LBB19_15:                              # %case.exit.0
	movq	272(%rsp), %rax
	movq	%rax, 240(%rsp)
	movq	240(%rsp), %rcx
	movq	248(%rsp), %rdx
	movq	16(%rdx), %rsi
	cmpq	$0, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB19_17
# %bb.16:                               # %ok.5
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rsi
	callq	*112(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$280, %rsp                      # imm = 0x118
	.cfi_def_cfa_offset 8
	retq
.LBB19_17:                              # %abort
	.cfi_def_cfa_offset 288
	callq	abort@PLT
.Lfunc_end19:
	.size	Cons.print_list, .Lfunc_end19-Cons.print_list
	.cfi_endproc
                                        # -- End function
	.globl	Cons_new                        # -- Begin function Cons_new
	.p2align	4, 0x90
	.type	Cons_new,@function
Cons_new:                               # @Cons_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Cons_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB20_2
# %bb.1:                                # %okay
	movq	_Cons_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	$0, 8(%rdx)
	movq	$0, 16(%rdx)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB20_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end20:
	.size	Cons_new, .Lfunc_end20-Cons_new
	.cfi_endproc
                                        # -- End function
	.globl	Nil.isNil                       # -- Begin function Nil.isNil
	.p2align	4, 0x90
	.type	Nil.isNil,@function
Nil.isNil:                              # @Nil.isNil
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, -8(%rsp)
	movb	$1, %cl
	movb	%cl, %al
	retq
.Lfunc_end21:
	.size	Nil.isNil, .Lfunc_end21-Nil.isNil
	.cfi_endproc
                                        # -- End function
	.globl	Nil.print_list                  # -- Begin function Nil.print_list
	.p2align	4, 0x90
	.type	Nil.print_list,@function
Nil.print_list:                         # @Nil.print_list
	.cfi_startproc
# %bb.0:                                # %entry
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdx, %r8
	movq	%rcx, %rdx
	movq	%r8, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movq	-16(%rsp), %rcx
	movq	%rcx, %rax
	retq
.Lfunc_end22:
	.size	Nil.print_list, .Lfunc_end22-Nil.print_list
	.cfi_endproc
                                        # -- End function
	.globl	Nil_new                         # -- Begin function Nil_new
	.p2align	4, 0x90
	.type	Nil_new,@function
Nil_new:                                # @Nil_new
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	_Nil_vtable_prototype@GOTPCREL(%rip), %rcx
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
	je	.LBB23_2
# %bb.1:                                # %okay
	movq	_Nil_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rcx, (%rdx)
	movq	%rdx, 32(%rsp)
	movq	%rdx, %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB23_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end23:
	.size	Nil_new, .Lfunc_end23-Nil_new
	.cfi_endproc
                                        # -- End function
	.globl	Main.main                       # -- Begin function Main.main
	.p2align	4, 0x90
	.type	Main.main,@function
Main.main:                              # @Main.main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$240, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movq	%rcx, %rdx
	movq	%rdx, 216(%rsp)
	movq	%rcx, 208(%rsp)                 # 8-byte Spill
	movq	%rdx, 200(%rsp)                 # 8-byte Spill
	callq	Book_new@PLT
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	je	.LBB24_6
# %bb.1:                                # %ok.0
	movq	192(%rsp), %rcx                 # 8-byte Reload
	movq	(%rcx), %r8
	movq	String.8@GOTPCREL(%rip), %r9
	movq	String.9@GOTPCREL(%rip), %r10
	movq	%rcx, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	movq	%r9, 184(%rsp)                  # 8-byte Spill
	movq	%r10, 176(%rsp)                 # 8-byte Spill
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	callq	*80(%r8)
	movq	%rax, %rcx
	movq	%rcx, 232(%rsp)
	movq	%rcx, 160(%rsp)                 # 8-byte Spill
	callq	Article_new@PLT
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	je	.LBB24_6
# %bb.2:                                # %ok.1
	movq	152(%rsp), %r8                  # 8-byte Reload
	movq	(%r8), %r9
	movq	String.10@GOTPCREL(%rip), %r10
	movq	String.11@GOTPCREL(%rip), %r11
	movq	String.12@GOTPCREL(%rip), %rbx
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%r11, %rdx
	movq	%rbx, %rcx
	movq	%r8, 152(%rsp)                  # 8-byte Spill
	movq	%r10, 144(%rsp)                 # 8-byte Spill
	movq	%r11, 136(%rsp)                 # 8-byte Spill
	movq	%r9, 128(%rsp)                  # 8-byte Spill
	callq	*104(%r9)
	movq	%rax, %r8
	movq	%r8, 224(%rsp)
	movq	224(%rsp), %r9
	movq	232(%rsp), %r10
	movq	%r10, 120(%rsp)                 # 8-byte Spill
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	movq	%r8, 104(%rsp)                  # 8-byte Spill
	callq	Nil_new@PLT
	movq	%rax, %r8
	cmpq	$0, %r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	je	.LBB24_6
# %bb.3:                                # %ok.3
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	120(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rsi
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	%r8, 120(%rsp)                  # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movq	%rax, %rcx
	cmpq	$0, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	je	.LBB24_6
# %bb.4:                                # %ok.2
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	88(%rdx), %r8
	movq	112(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r10
	movq	%rcx, %rdi
	movq	%r10, %rsi
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	%r10, 64(%rsp)                  # 8-byte Spill
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	callq	*%r8
	movq	%rax, %rcx
	movq	216(%rsp), %rdx
	movq	%rcx, %r8
	movq	%r8, 8(%rdx)
	movq	216(%rsp), %r9
	movq	8(%r9), %r10
	cmpq	$0, %r10
	movq	%r10, 40(%rsp)                  # 8-byte Spill
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB24_6
# %bb.5:                                # %ok.4
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.5@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*112(%rdx)
	movq	%rax, %rcx
	movq	%rcx, %rax
	addq	$240, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB24_6:                               # %abort
	.cfi_def_cfa_offset 256
	callq	abort@PLT
.Lfunc_end24:
	.size	Main.main, .Lfunc_end24-Main.main
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
	je	.LBB25_2
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
.LBB25_2:                               # %abort
	.cfi_def_cfa_offset 48
	callq	abort@PLT
.Lfunc_end25:
	.size	Main_new, .Lfunc_end25-Main_new
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

	.type	str.Book,@object                # @str.Book
str.Book:
	.asciz	"Book"
	.size	str.Book, 5

	.type	_Book_vtable_prototype,@object  # @_Book_vtable_prototype
	.globl	_Book_vtable_prototype
	.p2align	4
_Book_vtable_prototype:
	.long	5                               # 0x5
	.long	0+24
	.quad	str.Book
	.quad	Book_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Book.initBook
	.quad	Book.getSelf
	.quad	Book.print
	.size	_Book_vtable_prototype, 104

	.type	str.Article,@object             # @str.Article
str.Article:
	.asciz	"Article"
	.size	str.Article, 8

	.type	_Article_vtable_prototype,@object # @_Article_vtable_prototype
	.globl	_Article_vtable_prototype
	.p2align	4
_Article_vtable_prototype:
	.long	6                               # 0x6
	.long	0+32
	.quad	str.Article
	.quad	Article_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Book.initBook
	.quad	Article.getSelf
	.quad	Article.print
	.quad	Article.initArticle
	.size	_Article_vtable_prototype, 112

	.type	str.BookList,@object            # @str.BookList
str.BookList:
	.asciz	"BookList"
	.size	str.BookList, 9

	.type	_BookList_vtable_prototype,@object # @_BookList_vtable_prototype
	.globl	_BookList_vtable_prototype
	.p2align	4
_BookList_vtable_prototype:
	.long	7                               # 0x7
	.long	0+8
	.quad	str.BookList
	.quad	BookList_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	BookList.isNil
	.quad	BookList.cons
	.quad	BookList.car
	.quad	BookList.cdr
	.quad	BookList.print_list
	.size	_BookList_vtable_prototype, 120

	.type	str.Cons,@object                # @str.Cons
str.Cons:
	.asciz	"Cons"
	.size	str.Cons, 5

	.type	_Cons_vtable_prototype,@object  # @_Cons_vtable_prototype
	.globl	_Cons_vtable_prototype
	.p2align	4
_Cons_vtable_prototype:
	.long	8                               # 0x8
	.long	0+24
	.quad	str.Cons
	.quad	Cons_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Cons.isNil
	.quad	BookList.cons
	.quad	Cons.car
	.quad	Cons.cdr
	.quad	Cons.print_list
	.quad	Cons.init
	.size	_Cons_vtable_prototype, 128

	.type	str.Nil,@object                 # @str.Nil
str.Nil:
	.asciz	"Nil"
	.size	str.Nil, 4

	.type	_Nil_vtable_prototype,@object   # @_Nil_vtable_prototype
	.globl	_Nil_vtable_prototype
	.p2align	4
_Nil_vtable_prototype:
	.long	9                               # 0x9
	.long	0+8
	.quad	str.Nil
	.quad	Nil_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	IO_out_string
	.quad	IO_out_int
	.quad	IO_in_string
	.quad	IO_in_int
	.quad	Nil.isNil
	.quad	BookList.cons
	.quad	BookList.car
	.quad	BookList.cdr
	.quad	Nil.print_list
	.size	_Nil_vtable_prototype, 120

	.type	str.Main,@object                # @str.Main
str.Main:
	.asciz	"Main"
	.size	str.Main, 5

	.type	_Main_vtable_prototype,@object  # @_Main_vtable_prototype
	.globl	_Main_vtable_prototype
	.p2align	4
_Main_vtable_prototype:
	.long	10                              # 0xa
	.long	0+16
	.quad	str.Main
	.quad	Main_new
	.quad	Object_abort
	.quad	Object_type_name
	.quad	Object_copy
	.quad	Main.main
	.size	_Main_vtable_prototype, 56

	.type	str.13,@object                  # @str.13
str.13:
	.asciz	"<basic class>"
	.size	str.13, 14

	.type	String.13,@object               # @String.13
	.globl	String.13
	.p2align	3
String.13:
	.quad	_String_vtable_prototype
	.quad	str.13
	.size	String.13, 16

	.type	str.12,@object                  # @str.12
str.12:
	.asciz	"PC Magazine"
	.size	str.12, 12

	.type	String.12,@object               # @String.12
	.globl	String.12
	.p2align	3
String.12:
	.quad	_String_vtable_prototype
	.quad	str.12
	.size	String.12, 16

	.type	str.11,@object                  # @str.11
str.11:
	.asciz	"Ulanoff"
	.size	str.11, 8

	.type	String.11,@object               # @String.11
	.globl	String.11
	.p2align	3
String.11:
	.quad	_String_vtable_prototype
	.quad	str.11
	.size	String.11, 16

	.type	str.10,@object                  # @str.10
	.p2align	4
str.10:
	.asciz	"The Top 100 CD_ROMs"
	.size	str.10, 20

	.type	String.10,@object               # @String.10
	.globl	String.10
	.p2align	3
String.10:
	.quad	_String_vtable_prototype
	.quad	str.10
	.size	String.10, 16

	.type	str.9,@object                   # @str.9
	.p2align	4
str.9:
	.asciz	"Aho, Sethi, and Ullman"
	.size	str.9, 23

	.type	String.9,@object                # @String.9
	.globl	String.9
	.p2align	3
String.9:
	.quad	_String_vtable_prototype
	.quad	str.9
	.size	String.9, 16

	.type	str.8,@object                   # @str.8
	.p2align	4
str.8:
	.asciz	"Compilers, Principles, Techniques, and Tools"
	.size	str.8, 45

	.type	String.8,@object                # @String.8
	.globl	String.8
	.p2align	3
String.8:
	.quad	_String_vtable_prototype
	.quad	str.8
	.size	String.8, 16

	.type	str.7,@object                   # @str.7
	.p2align	4
str.7:
	.asciz	"- dynamic type was Article -\n"
	.size	str.7, 30

	.type	String.7,@object                # @String.7
	.globl	String.7
	.p2align	3
String.7:
	.quad	_String_vtable_prototype
	.quad	str.7
	.size	String.7, 16

	.type	str.6,@object                   # @str.6
	.p2align	4
str.6:
	.asciz	"- dynamic type was Book -\n"
	.size	str.6, 27

	.type	String.6,@object                # @String.6
	.globl	String.6
	.p2align	3
String.6:
	.quad	_String_vtable_prototype
	.quad	str.6
	.size	String.6, 16

	.type	str.5,@object                   # @str.5
str.5:
	.zero	1
	.size	str.5, 1

	.type	String.5,@object                # @String.5
	.globl	String.5
	.p2align	3
String.5:
	.quad	_String_vtable_prototype
	.quad	str.5
	.size	String.5, 16

	.type	str.4,@object                   # @str.4
str.4:
	.asciz	"periodical:  "
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
	.asciz	"author:     "
	.size	str.3, 13

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
	.asciz	"title:      "
	.size	str.1, 13

	.type	String.1,@object                # @String.1
	.globl	String.1
	.p2align	3
String.1:
	.quad	_String_vtable_prototype
	.quad	str.1
	.size	String.1, 16

	.type	str.0,@object                   # @str.0
str.0:
	.asciz	"book_list.cl"
	.size	str.0, 13

	.type	String.0,@object                # @String.0
	.globl	String.0
	.p2align	3
String.0:
	.quad	_String_vtable_prototype
	.quad	str.0
	.size	String.0, 16

	.section	".note.GNU-stack","",@progbits
