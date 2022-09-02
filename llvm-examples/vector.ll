; ModuleID = 'vector.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vector = type { i32, i32* }

@minArgC = constant i32 3, align 4
@.str = private unnamed_addr constant [8 x i8] c"MULT %d\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"error in input stream\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @readVector(%struct.vector* %vector, i32 %dimension, i8** %argv) #0 {
  %1 = alloca %struct.vector*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %i = alloca i32, align 4
  store %struct.vector* %vector, %struct.vector** %1, align 8
  store i32 %dimension, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i32* %2, align 4
  %5 = load %struct.vector** %1, align 8
  %6 = getelementptr inbounds %struct.vector* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 4
  %7 = load i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = call noalias i8* @malloc(i64 %9) #5
  %11 = bitcast i8* %10 to i32*
  %12 = load %struct.vector** %1, align 8
  %13 = getelementptr inbounds %struct.vector* %12, i32 0, i32 1
  store i32* %11, i32** %13, align 8
  store i32 0, i32* %i, align 4
  br label %14

; <label>:14                                      ; preds = %31, %0
  %15 = load i32* %i, align 4
  %16 = load i32* %2, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %34

; <label>:18                                      ; preds = %14
  %19 = load i32* %i, align 4
  %20 = sext i32 %19 to i64
  %21 = load i8*** %3, align 8
  %22 = getelementptr inbounds i8** %21, i64 %20
  %23 = load i8** %22, align 8
  %24 = call i32 @atoi(i8* %23) #6
  %25 = load i32* %i, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.vector** %1, align 8
  %28 = getelementptr inbounds %struct.vector* %27, i32 0, i32 1
  %29 = load i32** %28, align 8
  %30 = getelementptr inbounds i32* %29, i64 %26
  store i32 %24, i32* %30, align 4
  br label %31

; <label>:31                                      ; preds = %18
  %32 = load i32* %i, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %i, align 4
  br label %14

; <label>:34                                      ; preds = %14
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @mult(i32 %x.coerce0, i32* %x.coerce1, i32 %y.coerce0, i32* %y.coerce1) #0 {
  %x = alloca %struct.vector, align 8
  %y = alloca %struct.vector, align 8
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %1 = bitcast %struct.vector* %x to { i32, i32* }*
  %2 = getelementptr { i32, i32* }* %1, i32 0, i32 0
  store i32 %x.coerce0, i32* %2
  %3 = getelementptr { i32, i32* }* %1, i32 0, i32 1
  store i32* %x.coerce1, i32** %3
  %4 = bitcast %struct.vector* %y to { i32, i32* }*
  %5 = getelementptr { i32, i32* }* %4, i32 0, i32 0
  store i32 %y.coerce0, i32* %5
  %6 = getelementptr { i32, i32* }* %4, i32 0, i32 1
  store i32* %y.coerce1, i32** %6
  store i32 0, i32* %result, align 4
  store i32 0, i32* %i, align 4
  br label %7

; <label>:7                                       ; preds = %28, %0
  %8 = load i32* %i, align 4
  %9 = getelementptr inbounds %struct.vector* %x, i32 0, i32 0
  %10 = load i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %31

; <label>:12                                      ; preds = %7
  %13 = load i32* %result, align 4
  %14 = load i32* %i, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.vector* %x, i32 0, i32 1
  %17 = load i32** %16, align 8
  %18 = getelementptr inbounds i32* %17, i64 %15
  %19 = load i32* %18, align 4
  %20 = load i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vector* %y, i32 0, i32 1
  %23 = load i32** %22, align 8
  %24 = getelementptr inbounds i32* %23, i64 %21
  %25 = load i32* %24, align 4
  %26 = mul nsw i32 %19, %25
  %27 = add nsw i32 %13, %26
  store i32 %27, i32* %result, align 4
  br label %28

; <label>:28                                      ; preds = %12
  %29 = load i32* %i, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %i, align 4
  br label %7

; <label>:31                                      ; preds = %7
  %32 = load i32* %result, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %vector1 = alloca %struct.vector, align 8
  %vector2 = alloca %struct.vector, align 8
  %dimension = alloca i32, align 4
  %scalar = alloca i32, align 4
  store i32 0, i32* %1
  store i32 %argc, i32* %2, align 4
  store i8** %argv, i8*** %3, align 8
  %4 = load i8*** %3, align 8
  %5 = getelementptr inbounds i8** %4, i64 2
  %6 = load i8** %5, align 8
  %7 = call i32 @atoi(i8* %6) #6
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load i8*** %3, align 8
  %11 = getelementptr inbounds i8** %10, i64 2
  %12 = load i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #6
  store i32 %13, i32* %dimension, align 4
  br label %15

; <label>:14                                      ; preds = %0
  store i32 0, i32* %dimension, align 4
  br label %15

; <label>:15                                      ; preds = %14, %9
  %16 = load i32* %dimension, align 4
  %17 = load i8*** %3, align 8
  %18 = getelementptr inbounds i8** %17, i64 3
  call void @readVector(%struct.vector* %vector1, i32 %16, i8** %18)
  %19 = load i32* %dimension, align 4
  %20 = load i32* %dimension, align 4
  %21 = add nsw i32 3, %20
  %22 = sext i32 %21 to i64
  %23 = load i8*** %3, align 8
  %24 = getelementptr inbounds i8** %23, i64 %22
  call void @readVector(%struct.vector* %vector2, i32 %19, i8** %24)
  %25 = load i8*** %3, align 8
  %26 = getelementptr inbounds i8** %25, i64 1
  %27 = load i8** %26, align 8
  %28 = load i8* %27, align 1
  %29 = sext i8 %28 to i32
  switch i32 %29, label %44 [
    i32 109, label %30
  ]

; <label>:30                                      ; preds = %15
  %31 = bitcast %struct.vector* %vector1 to { i32, i32* }*
  %32 = getelementptr { i32, i32* }* %31, i32 0, i32 0
  %33 = load i32* %32, align 1
  %34 = getelementptr { i32, i32* }* %31, i32 0, i32 1
  %35 = load i32** %34, align 1
  %36 = bitcast %struct.vector* %vector2 to { i32, i32* }*
  %37 = getelementptr { i32, i32* }* %36, i32 0, i32 0
  %38 = load i32* %37, align 1
  %39 = getelementptr { i32, i32* }* %36, i32 0, i32 1
  %40 = load i32** %39, align 1
  %41 = call i32 @mult(i32 %33, i32* %35, i32 %38, i32* %40)
  store i32 %41, i32* %scalar, align 4
  %42 = load i32* %scalar, align 4
  %43 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0), i32 %42)
  br label %46

; <label>:44                                      ; preds = %15
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @.str1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:46                                      ; preds = %30
  ret i32 0
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 "}
