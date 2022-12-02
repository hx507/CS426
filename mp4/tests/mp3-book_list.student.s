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
	xorl	%eax, %eax
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
	movq	%r9, -24(%rsp)
	movq	%r8, -8(%rsp)
	movq	%rcx, -16(%rsp)
	movq	%r8, 8(%r9)
	movq	-16(%rsp), %rcx
	movq	-24(%rsp), %r8
	movq	%rcx, 16(%r8)
	movq	-24(%rsp), %rcx
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
	movq	%rcx, -8(%rsp)
	movq	%rcx, %rax
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, 88(%rsp)
	movq	%rax, 80(%rsp)
	testq	%rax, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.1:                                # %ok.2
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	64(%rsp), %r8                   # 8-byte Reload
	movq	(%r8), %r9
	movq	String.1@GOTPCREL(%rip), %r10
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%r8, 64(%rsp)                   # 8-byte Spill
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%r9, 160(%rsp)                  # 8-byte Spill
	movq	%r10, 152(%rsp)                 # 8-byte Spill
	callq	*56(%r9)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.2:                                # %ok.1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	48(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.3:                                # %ok.0
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	movq	%r8, 128(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 80(%rsp)
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.4:                                # %ok.5
	movq	88(%rsp), %rcx
	movq	16(%rcx), %rdx
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	(%r8), %r9
	movq	String.3@GOTPCREL(%rip), %r10
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	%r9, 112(%rsp)                  # 8-byte Spill
	movq	%r10, 104(%rsp)                 # 8-byte Spill
	callq	*56(%r9)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB3_7
# %bb.5:                                # %ok.4
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	je	.LBB3_7
# %bb.6:                                # %ok.3
	movq	72(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	addq	$168, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_7:                                # %abort
	.cfi_def_cfa_offset 176
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
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
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rcx, %rax
	movq	%rdx, %r8
	movq	%rsi, %r9
	movq	%rdi, %r10
	movq	%r10, 8(%rsp)
	movq	%r9, 64(%rsp)
	movq	%r8, 56(%rsp)
	movq	%rax, 40(%rsp)
	testq	%r10, %r10
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	je	.LBB5_2
# %bb.1:                                # %ok.0
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	%rcx, %rdi
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rsi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rdx
	callq	*80(%r8)
	movq	40(%rsp), %rcx
	movq	8(%rsp), %r8
	movq	%rcx, 24(%r8)
	movq	8(%rsp), %rcx
	movq	%rcx, %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 80
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
	movq	%rcx, -8(%rsp)
	movq	%rcx, %rax
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, 56(%rsp)
	movq	%rax, 48(%rsp)
	testq	%rcx, %rcx
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.1:                                # %ok.1
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, %rdi
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	callq	*96(%rcx)
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.2:                                # %ok.4
	movq	56(%rsp), %rcx
	movq	24(%rcx), %rdx
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	(%r8), %r9
	movq	String.4@GOTPCREL(%rip), %r10
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	callq	*56(%r9)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB7_5
# %bb.3:                                # %ok.3
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	8(%rsp), %r8                    # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	je	.LBB7_5
# %bb.4:                                # %ok.2
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.2@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*56(%rdx)
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_5:                                # %abort
	.cfi_def_cfa_offset 112
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB8_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB9_2
# %bb.1:                                # %ok.0
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*24(%rdx)
	movb	$1, %al
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %abort
	.cfi_def_cfa_offset 32
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rsi, %rcx
	movq	%rdi, %rdx
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	callq	Cons_new@PLT
	movq	%rax, %rcx
	movq	%rcx, 48(%rsp)
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB10_2
# %bb.1:                                # %ok.1
	movq	16(%rsp), %rcx
	movq	24(%rsp), %r8
	movq	8(%rsp), %r9                    # 8-byte Reload
	movq	(%r9), %r10
	movq	%r9, %rdi
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	*120(%r10)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %abort
	.cfi_def_cfa_offset 64
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB11_2
# %bb.1:                                # %ok.2
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*24(%rdx)
	callq	Book_new@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	je	.LBB12_2
# %bb.1:                                # %ok.3
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	callq	*24(%rdx)
	callq	BookList_new@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	movq	%rdx, -8(%rsp)
	movq	%rcx, -16(%rsp)
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB14_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
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
	movq	%rcx, -8(%rsp)
	xorl	%eax, %eax
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
	movq	%r9, -24(%rsp)
	movq	%r8, -8(%rsp)
	movq	%rcx, -16(%rsp)
	movq	%r8, 8(%r9)
	movq	-16(%rsp), %rcx
	movq	-24(%rsp), %r8
	movq	%rcx, 16(%r8)
	movq	-24(%rsp), %rcx
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
	movq	%rcx, -8(%rsp)
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
	movq	%rcx, -8(%rsp)
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
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rsi, %rax
	movq	%rdi, %rcx
	movq	%rcx, 64(%rsp)
	movq	%rax, 8(%rsp)
	movq	8(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 192(%rsp)                 # 8-byte Spill
	je	.LBB19_13
# %bb.1:                                # %ok.0
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	56(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, 184(%rsp)                 # 8-byte Spill
	callq	*96(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 8(%rsp)
	movq	64(%rsp), %rdx
	movq	8(%rdx), %r8
	testq	%r8, %r8
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	je	.LBB19_13
# %bb.2:                                # %ok.1
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	je	.LBB19_13
# %bb.3:                                # %ok.2
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	(%rax), %rcx
	movl	(%rcx), %edx
	cmpl	$6, %edx
	movl	%edx, 4(%rsp)                   # 4-byte Spill
	movq	%rcx, 152(%rsp)                 # 8-byte Spill
	jl	.LBB19_7
# %bb.4:                                # %src_gte_br.6.0
	jle	.LBB19_5
.LBB19_7:                               # %br_exit.6.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$5, %eax
	jl	.LBB19_13
# %bb.8:                                # %src_gte_br.5.0
	movl	4(%rsp), %eax                   # 4-byte Reload
	cmpl	$6, %eax
	jg	.LBB19_13
# %bb.9:                                # %src_lte_mc.5.0
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 208(%rsp)
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	je	.LBB19_13
# %bb.10:                               # %ok.4
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.6@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%r8, 112(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	jmp	.LBB19_11
.LBB19_5:                               # %src_lte_mc.6.0
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 200(%rsp)
	movq	8(%rsp), %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB19_13
# %bb.6:                                # %ok.3
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.7@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	movq	%r8, 136(%rsp)                  # 8-byte Spill
	callq	*56(%rdx)
	movq	%rax, %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
.LBB19_11:                              # %case.exit.0
	movq	72(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	64(%rsp), %rcx
	movq	16(%rcx), %rdx
	testq	%rdx, %rdx
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	je	.LBB19_13
# %bb.12:                               # %ok.5
	movq	80(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, %rsi
	callq	*112(%rdx)
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB19_13:                              # %abort
	.cfi_def_cfa_offset 224
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB20_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	$0, 8(%rcx)
	movq	$0, 16(%rcx)
	movq	%rcx, %rax
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
	movq	%rcx, -8(%rsp)
	movb	$1, %al
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
	movq	%rdx, -8(%rsp)
	movq	%rcx, -16(%rsp)
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB23_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	%rcx, %rax
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
	subq	$192, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	movq	%rcx, 48(%rsp)
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	callq	Book_new@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	je	.LBB24_6
# %bb.1:                                # %ok.0
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %r8
	movq	String.8@GOTPCREL(%rip), %r9
	movq	String.9@GOTPCREL(%rip), %r10
	movq	%rcx, %rdi
	movq	%r9, %rsi
	movq	%r10, %rdx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	%r8, 168(%rsp)                  # 8-byte Spill
	movq	%r9, 160(%rsp)                  # 8-byte Spill
	movq	%r10, 152(%rsp)                 # 8-byte Spill
	callq	*80(%r8)
	movq	%rax, %rcx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	callq	Article_new@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	je	.LBB24_6
# %bb.2:                                # %ok.1
	movq	32(%rsp), %r8                   # 8-byte Reload
	movq	(%r8), %r9
	movq	String.10@GOTPCREL(%rip), %r10
	movq	String.11@GOTPCREL(%rip), %r11
	movq	String.12@GOTPCREL(%rip), %rbx
	movq	%r8, %rdi
	movq	%r10, %rsi
	movq	%r11, %rdx
	movq	%rbx, %rcx
	movq	%r8, 32(%rsp)                   # 8-byte Spill
	movq	%r9, 136(%rsp)                  # 8-byte Spill
	movq	%r10, 128(%rsp)                 # 8-byte Spill
	movq	%r11, 120(%rsp)                 # 8-byte Spill
	callq	*104(%r9)
	movq	%rax, %r8
	movq	%r8, 184(%rsp)
	movq	64(%rsp), %r9
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	callq	Nil_new@PLT
	movq	%rax, %r8
	testq	%r8, %r8
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	je	.LBB24_6
# %bb.3:                                # %ok.3
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	16(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	callq	*88(%rdx)
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	je	.LBB24_6
# %bb.4:                                # %ok.2
	movq	(%rsp), %rcx                    # 8-byte Reload
	movq	(%rcx), %rdx
	movq	%rcx, %rdi
	movq	24(%rsp), %r8                   # 8-byte Reload
	movq	%r8, %rsi
	movq	%r8, 24(%rsp)                   # 8-byte Spill
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	callq	*88(%rdx)
	movq	%rax, %rcx
	movq	48(%rsp), %rdx
	movq	%rcx, 8(%rdx)
	movq	48(%rsp), %r8
	movq	8(%r8), %r9
	testq	%r9, %r9
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	je	.LBB24_6
# %bb.5:                                # %ok.4
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	(%rcx), %rdx
	movq	String.5@GOTPCREL(%rip), %r8
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	*112(%rdx)
	addq	$192, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB24_6:                               # %abort
	.cfi_def_cfa_offset 208
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
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movl	%edx, 28(%rsp)                  # 4-byte Spill
	callq	malloc@PLT
	movq	%rax, %rcx
	testq	%rcx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	je	.LBB25_2
# %bb.1:                                # %okay
	movq	8(%rsp), %rcx                   # 8-byte Reload
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%rcx, 32(%rsp)
	movq	$0, 8(%rcx)
	movq	%rcx, %rax
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
