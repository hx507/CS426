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
	movq	%rax, %rdi
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
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movq	%rsi, 8(%rdi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rsp), %rax
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
	movq	%rdi, %rax
	movq	%rdi, -8(%rsp)
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	testq	%rsi, %rsi
	je	.LBB3_7
# %bb.1:                                # %ok.2
	movq	%rsi, %rax
	movq	8(%rdi), %rbx
	movq	(%rsi), %rcx
	movq	String.1@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.2:                                # %ok.1
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.3:                                # %ok.0
	movq	(%rax), %rcx
	movq	String.2@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	movq	%rax, (%rsp)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.4:                                # %ok.5
	movq	8(%rsp), %rcx
	movq	16(%rcx), %rbx
	movq	(%rax), %rcx
	movq	String.3@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.5:                                # %ok.4
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.6:                                # %ok.3
	movq	(%rax), %rcx
	movq	String.2@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_7:                                # %abort
	.cfi_def_cfa_offset 32
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %r14
	movl	4(%r14), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB4_2
# %bb.1:                                # %okay
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%rax, (%rsp)
	callq	String_new@PLT
	movq	%rax, 8(%rbx)
	callq	String_new@PLT
	movq	%rax, 16(%rbx)
	callq	String_new@PLT
	movq	%rax, 8(%rbx)
	callq	String_new@PLT
	movq	%rax, 16(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB4_2:                                # %abort
	.cfi_def_cfa_offset 32
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	testq	%rdi, %rdi
	je	.LBB5_2
# %bb.1:                                # %ok.0
	movq	(%rdi), %rax
	callq	*80(%rax)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movq	8(%rsp), %rax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_2:                                # %abort
	.cfi_def_cfa_offset 48
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
	movq	%rdi, %rax
	movq	%rdi, -8(%rsp)
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	testq	%rdi, %rdi
	je	.LBB7_5
# %bb.1:                                # %ok.1
	movq	_Book_vtable_prototype@GOTPCREL(%rip), %rax
	callq	*96(%rax)
	movq	%rax, (%rsp)
	testq	%rax, %rax
	je	.LBB7_5
# %bb.2:                                # %ok.4
	movq	8(%rsp), %rcx
	movq	24(%rcx), %rbx
	movq	(%rax), %rcx
	movq	String.4@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB7_5
# %bb.3:                                # %ok.3
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*56(%rcx)
	testq	%rax, %rax
	je	.LBB7_5
# %bb.4:                                # %ok.2
	movq	(%rax), %rcx
	movq	String.2@GOTPCREL(%rip), %rsi
	movq	%rax, %rdi
	callq	*56(%rcx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB7_5:                                # %abort
	.cfi_def_cfa_offset 32
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	_Article_vtable_prototype@GOTPCREL(%rip), %r14
	movl	4(%r14), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB8_2
# %bb.1:                                # %okay
	movq	%rax, %rbx
	movq	%r14, (%rax)
	movq	%rax, (%rsp)
	callq	String_new@PLT
	movq	%rax, 8(%rbx)
	callq	String_new@PLT
	movq	%rax, 16(%rbx)
	callq	String_new@PLT
	movq	%rax, 24(%rbx)
	callq	String_new@PLT
	movq	%rax, 8(%rbx)
	callq	String_new@PLT
	movq	%rax, 16(%rbx)
	callq	String_new@PLT
	movq	%rax, 24(%rbx)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB8_2:                                # %abort
	.cfi_def_cfa_offset 32
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	testq	%rdi, %rdi
	je	.LBB9_2
# %bb.1:                                # %ok.0
	movq	(%rdi), %rax
	callq	*24(%rax)
	movb	$1, %al
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %abort
	.cfi_def_cfa_offset 16
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	callq	Cons_new@PLT
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB10_2
# %bb.1:                                # %ok.1
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	(%rax), %rcx
	movq	%rax, %rdi
	callq	*120(%rcx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	testq	%rdi, %rdi
	je	.LBB11_2
# %bb.1:                                # %ok.2
	movq	(%rdi), %rax
	callq	*24(%rax)
	callq	Book_new@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB11_2:                               # %abort
	.cfi_def_cfa_offset 16
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	testq	%rdi, %rdi
	je	.LBB12_2
# %bb.1:                                # %ok.3
	movq	(%rdi), %rax
	callq	*24(%rax)
	callq	BookList_new@PLT
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB12_2:                               # %abort
	.cfi_def_cfa_offset 16
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
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	String.5@GOTPCREL(%rip), %rax
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_BookList_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB14_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB14_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	movq	%rdi, -8(%rsp)
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
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movq	%rdx, -16(%rsp)
	movq	%rsi, 8(%rdi)
	movq	-16(%rsp), %rax
	movq	-24(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rsp), %rax
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
	movq	%rdi, -8(%rsp)
	movq	8(%rdi), %rax
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
	movq	%rdi, -8(%rsp)
	movq	16(%rdi), %rax
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.1:                                # %ok.0
	movq	(%rdi), %rax
	callq	*96(%rax)
	movq	%rax, (%rsp)
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.2:                                # %ok.1
	movq	(%rdi), %rax
	callq	*88(%rax)
	testq	%rax, %rax
	je	.LBB19_13
# %bb.3:                                # %ok.2
	movq	(%rax), %rcx
	movl	(%rcx), %ecx
	cmpl	$6, %ecx
	jl	.LBB19_7
# %bb.4:                                # %src_gte_br.6.0
	jle	.LBB19_5
.LBB19_7:                               # %br_exit.6.0
	cmpl	$5, %ecx
	jl	.LBB19_13
# %bb.8:                                # %src_gte_br.5.0
	cmpl	$6, %ecx
	jg	.LBB19_13
# %bb.9:                                # %src_lte_mc.5.0
	movq	%rax, 32(%rsp)
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.10:                               # %ok.4
	movq	(%rdi), %rax
	movq	String.6@GOTPCREL(%rip), %rsi
	jmp	.LBB19_11
.LBB19_5:                               # %src_lte_mc.6.0
	movq	%rax, 24(%rsp)
	movq	(%rsp), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.6:                                # %ok.3
	movq	(%rdi), %rax
	movq	String.7@GOTPCREL(%rip), %rsi
.LBB19_11:                              # %case.exit.0
	callq	*56(%rax)
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rsi
	movq	%rsi, (%rsp)
	movq	8(%rsp), %rax
	movq	16(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB19_13
# %bb.12:                               # %ok.5
	movq	(%rdi), %rax
	callq	*112(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB19_13:                              # %abort
	.cfi_def_cfa_offset 48
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_Cons_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB20_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	movq	$0, 8(%rax)
	movq	$0, 16(%rax)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB20_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	movq	%rdi, -8(%rsp)
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
	movq	%rsi, %rax
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_Nil_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB23_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB23_2:                               # %abort
	.cfi_def_cfa_offset 32
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, (%rsp)
	callq	Book_new@PLT
	testq	%rax, %rax
	je	.LBB24_6
# %bb.1:                                # %ok.0
	movq	(%rax), %rcx
	movq	String.8@GOTPCREL(%rip), %rsi
	movq	String.9@GOTPCREL(%rip), %rdx
	movq	%rax, %rdi
	callq	*80(%rcx)
	movq	%rax, 8(%rsp)
	callq	Article_new@PLT
	testq	%rax, %rax
	je	.LBB24_6
# %bb.2:                                # %ok.1
	movq	(%rax), %rbx
	movq	String.10@GOTPCREL(%rip), %rsi
	movq	String.11@GOTPCREL(%rip), %rdx
	movq	String.12@GOTPCREL(%rip), %rcx
	movq	%rax, %rdi
	callq	*104(%rbx)
	movq	%rax, %rbx
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %r14
	callq	Nil_new@PLT
	testq	%rax, %rax
	je	.LBB24_6
# %bb.3:                                # %ok.3
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	*88(%rcx)
	testq	%rax, %rax
	je	.LBB24_6
# %bb.4:                                # %ok.2
	movq	(%rax), %rcx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*88(%rcx)
	movq	(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	(%rsp), %rax
	movq	8(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB24_6
# %bb.5:                                # %ok.4
	movq	(%rdi), %rax
	movq	String.5@GOTPCREL(%rip), %rsi
	callq	*112(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB24_6:                               # %abort
	.cfi_def_cfa_offset 48
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	_Main_vtable_prototype@GOTPCREL(%rip), %rbx
	movl	4(%rbx), %edi
	callq	malloc@PLT
	testq	%rax, %rax
	je	.LBB25_2
# %bb.1:                                # %okay
	movq	%rbx, (%rax)
	movq	%rax, 8(%rsp)
	movq	$0, 8(%rax)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB25_2:                               # %abort
	.cfi_def_cfa_offset 32
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
