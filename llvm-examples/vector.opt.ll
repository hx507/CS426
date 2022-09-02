; ModuleID = 'vector.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32* }

@minArgC = constant i32 3, align 4
@.str = private unnamed_addr constant [8 x i8] c"MULT %d\00", align 1
@str = private unnamed_addr constant [22 x i8] c"error in input stream\00"

; Function Attrs: nounwind uwtable
define void @readVector(%struct.vector* nocapture %vector, i32 %dimension, i8** nocapture readonly %argv) #0 {
  %1 = getelementptr inbounds %struct.vector* %vector, i64 0, i32 0
  store i32 %dimension, i32* %1, align 4, !tbaa !1
  %2 = sext i32 %dimension to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call noalias i8* @malloc(i64 %3) #4
  %5 = bitcast i8* %4 to i32*
  %6 = getelementptr inbounds %struct.vector* %vector, i64 0, i32 1
  store i32* %5, i32** %6, align 8, !tbaa !7
  %7 = icmp sgt i32 %dimension, 0
  br i1 %7, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %8 = getelementptr inbounds i8** %argv, i64 %indvars.iv
  %9 = load i8** %8, align 8, !tbaa !8
  %10 = tail call i64 @strtol(i8* nocapture %9, i8** null, i32 10) #4
  %11 = trunc i64 %10 to i32
  %12 = load i32** %6, align 8, !tbaa !7
  %13 = getelementptr inbounds i32* %12, i64 %indvars.iv
  store i32 %11, i32* %13, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dimension
  br i1 %exitcond, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %0
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly uwtable
define i32 @mult(i32 %x.coerce0, i32* nocapture readonly %x.coerce1, i32 %y.coerce0, i32* nocapture readonly %y.coerce1) #2 {
  %1 = icmp sgt i32 %x.coerce0, 0
  br i1 %1, label %overflow.checked, label %._crit_edge

overflow.checked:                                 ; preds = %0
  %2 = add i32 %x.coerce0, -1
  %3 = zext i32 %2 to i64
  %4 = add nuw nsw i64 %3, 1
  %end.idx = add nuw nsw i64 %3, 1
  %n.vec = and i64 %4, 8589934584
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %overflow.checked
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.phi = phi <4 x i32> [ %15, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi4 = phi <4 x i32> [ %16, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %5 = getelementptr inbounds i32* %x.coerce1, i64 %index
  %6 = bitcast i32* %5 to <4 x i32>*
  %wide.load = load <4 x i32>* %6, align 4, !tbaa !9
  %.sum14 = or i64 %index, 4
  %7 = getelementptr i32* %x.coerce1, i64 %.sum14
  %8 = bitcast i32* %7 to <4 x i32>*
  %wide.load5 = load <4 x i32>* %8, align 4, !tbaa !9
  %9 = getelementptr inbounds i32* %y.coerce1, i64 %index
  %10 = bitcast i32* %9 to <4 x i32>*
  %wide.load6 = load <4 x i32>* %10, align 4, !tbaa !9
  %.sum15 = or i64 %index, 4
  %11 = getelementptr i32* %y.coerce1, i64 %.sum15
  %12 = bitcast i32* %11 to <4 x i32>*
  %wide.load7 = load <4 x i32>* %12, align 4, !tbaa !9
  %13 = mul nsw <4 x i32> %wide.load6, %wide.load
  %14 = mul nsw <4 x i32> %wide.load7, %wide.load5
  %15 = add nsw <4 x i32> %13, %vec.phi
  %16 = add nsw <4 x i32> %14, %vec.phi4
  %index.next = add i64 %index, 8
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block.loopexit, label %vector.body, !llvm.loop !10

middle.block.loopexit:                            ; preds = %vector.body
  %.lcssa17 = phi <4 x i32> [ %16, %vector.body ]
  %.lcssa16 = phi <4 x i32> [ %15, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %rdx.vec.exit.phi = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa16, %middle.block.loopexit ]
  %rdx.vec.exit.phi10 = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa17, %middle.block.loopexit ]
  %bin.rdx = add <4 x i32> %rdx.vec.exit.phi10, %rdx.vec.exit.phi
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx11 = add <4 x i32> %bin.rdx, %rdx.shuf
  %rdx.shuf12 = shufflevector <4 x i32> %bin.rdx11, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx13 = add <4 x i32> %bin.rdx11, %rdx.shuf12
  %18 = extractelement <4 x i32> %bin.rdx13, i32 0
  %cmp.n = icmp eq i64 %end.idx, %resume.val
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %middle.block
  %19 = add i32 %x.coerce0, 1
  %20 = add i64 %resume.val, 1
  %21 = trunc i64 %20 to i32
  %22 = sub i32 %19, %21
  %xtraiter = and i32 %22, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %22, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %.lr.ph.unr, label %.lr.ph.preheader.split

.lr.ph.unr:                                       ; preds = %.lr.ph.preheader
  %23 = getelementptr inbounds i32* %x.coerce1, i64 %resume.val
  %24 = load i32* %23, align 4, !tbaa !9
  %25 = getelementptr inbounds i32* %y.coerce1, i64 %resume.val
  %26 = load i32* %25, align 4, !tbaa !9
  %27 = mul nsw i32 %26, %24
  %28 = add nsw i32 %27, %18
  %indvars.iv.next.unr = add nuw nsw i64 %resume.val, 1
  %lftr.wideiv.unr = trunc i64 %indvars.iv.next.unr to i32
  %exitcond.unr = icmp eq i32 %lftr.wideiv.unr, %x.coerce0
  br label %.lr.ph.preheader.split

.lr.ph.preheader.split:                           ; preds = %.lr.ph.unr, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ 0, %.lr.ph.preheader ], [ %28, %.lr.ph.unr ]
  %indvars.iv.unr = phi i64 [ %resume.val, %.lr.ph.preheader ], [ %indvars.iv.next.unr, %.lr.ph.unr ]
  %result.02.unr = phi i32 [ %18, %.lr.ph.preheader ], [ %28, %.lr.ph.unr ]
  %29 = icmp ult i32 %22, 2
  br i1 %29, label %._crit_edge.loopexit, label %.lr.ph.preheader.split.split

.lr.ph.preheader.split.split:                     ; preds = %.lr.ph.preheader.split
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.split.split
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.preheader.split.split ], [ %indvars.iv.next.1, %.lr.ph ]
  %result.02 = phi i32 [ %result.02.unr, %.lr.ph.preheader.split.split ], [ %41, %.lr.ph ]
  %30 = getelementptr inbounds i32* %x.coerce1, i64 %indvars.iv
  %31 = load i32* %30, align 4, !tbaa !9
  %32 = getelementptr inbounds i32* %y.coerce1, i64 %indvars.iv
  %33 = load i32* %32, align 4, !tbaa !9
  %34 = mul nsw i32 %33, %31
  %35 = add nsw i32 %34, %result.02
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %36 = getelementptr inbounds i32* %x.coerce1, i64 %indvars.iv.next
  %37 = load i32* %36, align 4, !tbaa !9
  %38 = getelementptr inbounds i32* %y.coerce1, i64 %indvars.iv.next
  %39 = load i32* %38, align 4, !tbaa !9
  %40 = mul nsw i32 %39, %37
  %41 = add nsw i32 %40, %35
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next, 1
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv.1, %x.coerce0
  br i1 %exitcond.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !13

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %.lcssa.ph = phi i32 [ %41, %.lr.ph ]
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.preheader.split, %._crit_edge.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.preheader.split ], [ %.lcssa.ph, %._crit_edge.loopexit.unr-lcssa ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %middle.block, %0
  %result.0.lcssa = phi i32 [ 0, %0 ], [ %18, %middle.block ], [ %.lcssa, %._crit_edge.loopexit ]
  ret i32 %result.0.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) #0 {
  %1 = getelementptr inbounds i8** %argv, i64 2
  %2 = load i8** %1, align 8, !tbaa !8
  %3 = tail call i64 @strtol(i8* nocapture %2, i8** null, i32 10) #4
  %4 = trunc i64 %3 to i32
  %5 = icmp slt i32 %4, 0
  %. = select i1 %5, i32 0, i32 %4
  %6 = sext i32 %. to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call noalias i8* @malloc(i64 %7) #4
  %9 = bitcast i8* %8 to i32*
  %10 = icmp sgt i32 %., 0
  br i1 %10, label %.lr.ph.i.preheader, label %readVector.exit.thread

.lr.ph.i.preheader:                               ; preds = %0
  br label %.lr.ph.i

readVector.exit.thread:                           ; preds = %0
  %11 = tail call noalias i8* @malloc(i64 %7) #4
  %12 = bitcast i8* %11 to i32*
  br label %readVector.exit6

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.sum12 = add i64 %indvars.iv.i, 3
  %13 = getelementptr inbounds i8** %argv, i64 %.sum12
  %14 = load i8** %13, align 8, !tbaa !8
  %15 = tail call i64 @strtol(i8* nocapture %14, i8** null, i32 10) #4
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds i32* %9, i64 %indvars.iv.i
  store i32 %16, i32* %17, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.i = icmp eq i32 %lftr.wideiv.i, %.
  br i1 %exitcond.i, label %readVector.exit, label %.lr.ph.i

readVector.exit:                                  ; preds = %.lr.ph.i
  %18 = add nsw i32 %., 3
  %19 = sext i32 %18 to i64
  %20 = tail call noalias i8* @malloc(i64 %7) #4
  %21 = bitcast i8* %20 to i32*
  br i1 %10, label %.lr.ph.i5.preheader, label %readVector.exit6

.lr.ph.i5.preheader:                              ; preds = %readVector.exit
  br label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.lr.ph.i5.preheader, %.lr.ph.i5
  %indvars.iv.i1 = phi i64 [ %indvars.iv.next.i2, %.lr.ph.i5 ], [ 0, %.lr.ph.i5.preheader ]
  %.sum = add i64 %indvars.iv.i1, %19
  %22 = getelementptr inbounds i8** %argv, i64 %.sum
  %23 = load i8** %22, align 8, !tbaa !8
  %24 = tail call i64 @strtol(i8* nocapture %23, i8** null, i32 10) #4
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds i32* %21, i64 %indvars.iv.i1
  store i32 %25, i32* %26, align 4, !tbaa !9
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  %lftr.wideiv.i3 = trunc i64 %indvars.iv.next.i2 to i32
  %exitcond.i4 = icmp eq i32 %lftr.wideiv.i3, %.
  br i1 %exitcond.i4, label %readVector.exit6.loopexit, label %.lr.ph.i5

readVector.exit6.loopexit:                        ; preds = %.lr.ph.i5
  br label %readVector.exit6

readVector.exit6:                                 ; preds = %readVector.exit6.loopexit, %readVector.exit.thread, %readVector.exit
  %27 = phi i32* [ %12, %readVector.exit.thread ], [ %21, %readVector.exit ], [ %21, %readVector.exit6.loopexit ]
  %28 = getelementptr inbounds i8** %argv, i64 1
  %29 = load i8** %28, align 8, !tbaa !8
  %30 = load i8* %29, align 1, !tbaa !14
  %cond = icmp eq i8 %30, 109
  br i1 %cond, label %31, label %76

; <label>:31                                      ; preds = %readVector.exit6
  br i1 %10, label %overflow.checked, label %mult.exit

overflow.checked:                                 ; preds = %31
  %32 = trunc i64 %3 to i32
  %33 = icmp sgt i32 %32, 0
  %.op = add i64 %3, 4294967295
  %34 = and i64 %.op, 4294967295
  %.op24 = add nuw nsw i64 %34, 1
  %35 = select i1 %33, i64 %.op24, i64 4294967296
  %n.vec = and i64 %35, 9223372036854775800
  %cmp.zero = icmp eq i64 %n.vec, 0
  br i1 %cmp.zero, label %middle.block, label %vector.body.preheader

vector.body.preheader:                            ; preds = %overflow.checked
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ]
  %vec.phi = phi <4 x i32> [ %46, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi14 = phi <4 x i32> [ %47, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %36 = getelementptr inbounds i32* %9, i64 %index
  %37 = bitcast i32* %36 to <4 x i32>*
  %wide.load = load <4 x i32>* %37, align 4, !tbaa !9
  %.sum2526 = or i64 %index, 4
  %38 = getelementptr i32* %9, i64 %.sum2526
  %39 = bitcast i32* %38 to <4 x i32>*
  %wide.load15 = load <4 x i32>* %39, align 4, !tbaa !9
  %40 = getelementptr inbounds i32* %27, i64 %index
  %41 = bitcast i32* %40 to <4 x i32>*
  %wide.load16 = load <4 x i32>* %41, align 4, !tbaa !9
  %.sum2728 = or i64 %index, 4
  %42 = getelementptr i32* %27, i64 %.sum2728
  %43 = bitcast i32* %42 to <4 x i32>*
  %wide.load17 = load <4 x i32>* %43, align 4, !tbaa !9
  %44 = mul nsw <4 x i32> %wide.load16, %wide.load
  %45 = mul nsw <4 x i32> %wide.load17, %wide.load15
  %46 = add nsw <4 x i32> %44, %vec.phi
  %47 = add nsw <4 x i32> %45, %vec.phi14
  %index.next = add i64 %index, 8
  %48 = icmp eq i64 %index.next, %n.vec
  br i1 %48, label %middle.block.loopexit, label %vector.body, !llvm.loop !15

middle.block.loopexit:                            ; preds = %vector.body
  %.lcssa30 = phi <4 x i32> [ %47, %vector.body ]
  %.lcssa29 = phi <4 x i32> [ %46, %vector.body ]
  br label %middle.block

middle.block:                                     ; preds = %middle.block.loopexit, %overflow.checked
  %resume.val = phi i64 [ 0, %overflow.checked ], [ %n.vec, %middle.block.loopexit ]
  %rdx.vec.exit.phi = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa29, %middle.block.loopexit ]
  %rdx.vec.exit.phi20 = phi <4 x i32> [ zeroinitializer, %overflow.checked ], [ %.lcssa30, %middle.block.loopexit ]
  %bin.rdx = add <4 x i32> %rdx.vec.exit.phi20, %rdx.vec.exit.phi
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx21 = add <4 x i32> %bin.rdx, %rdx.shuf
  %rdx.shuf22 = shufflevector <4 x i32> %bin.rdx21, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx23 = add <4 x i32> %bin.rdx21, %rdx.shuf22
  %49 = extractelement <4 x i32> %bin.rdx23, i32 0
  %cmp.n = icmp eq i64 %35, %resume.val
  br i1 %cmp.n, label %mult.exit, label %.lr.ph.i11.preheader

.lr.ph.i11.preheader:                             ; preds = %middle.block
  %50 = trunc i64 %3 to i32
  %51 = icmp sgt i32 %50, 0
  %smax = select i1 %51, i32 %50, i32 0
  %52 = add i32 %smax, 1
  %53 = add i64 %resume.val, 1
  %54 = trunc i64 %53 to i32
  %55 = sub i32 %52, %54
  %xtraiter = and i32 %55, 1
  %lcmp.mod = icmp ne i32 %xtraiter, 0
  %lcmp.overflow = icmp eq i32 %55, 0
  %lcmp.or = or i1 %lcmp.overflow, %lcmp.mod
  br i1 %lcmp.or, label %.lr.ph.i11.unr, label %.lr.ph.i11.preheader.split

.lr.ph.i11.unr:                                   ; preds = %.lr.ph.i11.preheader
  %56 = getelementptr inbounds i32* %9, i64 %resume.val
  %57 = load i32* %56, align 4, !tbaa !9
  %58 = getelementptr inbounds i32* %27, i64 %resume.val
  %59 = load i32* %58, align 4, !tbaa !9
  %60 = mul nsw i32 %59, %57
  %61 = add nsw i32 %60, %49
  %indvars.iv.next.i8.unr = add nuw nsw i64 %resume.val, 1
  %lftr.wideiv.i9.unr = trunc i64 %indvars.iv.next.i8.unr to i32
  %exitcond.i10.unr = icmp eq i32 %lftr.wideiv.i9.unr, %.
  br label %.lr.ph.i11.preheader.split

.lr.ph.i11.preheader.split:                       ; preds = %.lr.ph.i11.unr, %.lr.ph.i11.preheader
  %.lcssa.unr = phi i32 [ 0, %.lr.ph.i11.preheader ], [ %61, %.lr.ph.i11.unr ]
  %indvars.iv.i7.unr = phi i64 [ %resume.val, %.lr.ph.i11.preheader ], [ %indvars.iv.next.i8.unr, %.lr.ph.i11.unr ]
  %result.02.i.unr = phi i32 [ %49, %.lr.ph.i11.preheader ], [ %61, %.lr.ph.i11.unr ]
  %62 = icmp ult i32 %55, 2
  br i1 %62, label %mult.exit.loopexit, label %.lr.ph.i11.preheader.split.split

.lr.ph.i11.preheader.split.split:                 ; preds = %.lr.ph.i11.preheader.split
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.i11.preheader.split.split
  %indvars.iv.i7 = phi i64 [ %indvars.iv.i7.unr, %.lr.ph.i11.preheader.split.split ], [ %indvars.iv.next.i8.1, %.lr.ph.i11 ]
  %result.02.i = phi i32 [ %result.02.i.unr, %.lr.ph.i11.preheader.split.split ], [ %74, %.lr.ph.i11 ]
  %63 = getelementptr inbounds i32* %9, i64 %indvars.iv.i7
  %64 = load i32* %63, align 4, !tbaa !9
  %65 = getelementptr inbounds i32* %27, i64 %indvars.iv.i7
  %66 = load i32* %65, align 4, !tbaa !9
  %67 = mul nsw i32 %66, %64
  %68 = add nsw i32 %67, %result.02.i
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1
  %lftr.wideiv.i9 = trunc i64 %indvars.iv.next.i8 to i32
  %69 = getelementptr inbounds i32* %9, i64 %indvars.iv.next.i8
  %70 = load i32* %69, align 4, !tbaa !9
  %71 = getelementptr inbounds i32* %27, i64 %indvars.iv.next.i8
  %72 = load i32* %71, align 4, !tbaa !9
  %73 = mul nsw i32 %72, %70
  %74 = add nsw i32 %73, %68
  %indvars.iv.next.i8.1 = add nuw nsw i64 %indvars.iv.next.i8, 1
  %lftr.wideiv.i9.1 = trunc i64 %indvars.iv.next.i8.1 to i32
  %exitcond.i10.1 = icmp eq i32 %lftr.wideiv.i9.1, %.
  br i1 %exitcond.i10.1, label %mult.exit.loopexit.unr-lcssa, label %.lr.ph.i11, !llvm.loop !16

mult.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i11
  %.lcssa.ph = phi i32 [ %74, %.lr.ph.i11 ]
  br label %mult.exit.loopexit

mult.exit.loopexit:                               ; preds = %.lr.ph.i11.preheader.split, %mult.exit.loopexit.unr-lcssa
  %.lcssa = phi i32 [ %.lcssa.unr, %.lr.ph.i11.preheader.split ], [ %.lcssa.ph, %mult.exit.loopexit.unr-lcssa ]
  br label %mult.exit

mult.exit:                                        ; preds = %mult.exit.loopexit, %middle.block, %31
  %result.0.lcssa.i = phi i32 [ 0, %31 ], [ %49, %middle.block ], [ %.lcssa, %mult.exit.loopexit ]
  %75 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), i32 %result.0.lcssa.i) #4
  ret i32 0

; <label>:76                                      ; preds = %readVector.exit6
  %puts = tail call i32 @puts(i8* getelementptr inbounds ([22 x i8]* @str, i64 0, i64 0))
  tail call void @exit(i32 1) #5
  unreachable
}

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 "}
!1 = metadata !{metadata !2, metadata !3, i64 0}
!2 = metadata !{metadata !"", metadata !3, i64 0, metadata !6, i64 8}
!3 = metadata !{metadata !"int", metadata !4, i64 0}
!4 = metadata !{metadata !"omnipotent char", metadata !5, i64 0}
!5 = metadata !{metadata !"Simple C/C++ TBAA"}
!6 = metadata !{metadata !"any pointer", metadata !4, i64 0}
!7 = metadata !{metadata !2, metadata !6, i64 8}
!8 = metadata !{metadata !6, metadata !6, i64 0}
!9 = metadata !{metadata !3, metadata !3, i64 0}
!10 = metadata !{metadata !10, metadata !11, metadata !12}
!11 = metadata !{metadata !"llvm.loop.vectorize.width", i32 1}
!12 = metadata !{metadata !"llvm.loop.interleave.count", i32 1}
!13 = metadata !{metadata !13, metadata !11, metadata !12}
!14 = metadata !{metadata !4, metadata !4, i64 0}
!15 = metadata !{metadata !15, metadata !11, metadata !12}
!16 = metadata !{metadata !16, metadata !11, metadata !12}
