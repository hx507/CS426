; ModuleID = 'ternary.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test(i32 %cond1, i32 %x, i32 %cond2, i32 %y) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  store i32 %cond1, i32* %1, align 4
  store i32 %x, i32* %2, align 4
  store i32 %cond2, i32* %3, align 4
  store i32 %y, i32* %4, align 4
  %5 = load i32* %1, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load i32* %2, align 4
  %9 = mul nsw i32 5, %8
  br label %13

; <label>:10                                      ; preds = %0
  %11 = load i32* %2, align 4
  %12 = add nsw i32 %11, 1
  br label %13

; <label>:13                                      ; preds = %10, %7
  %14 = phi i32 [ %9, %7 ], [ %12, %10 ]
  store i32 %14, i32* %a, align 4
  %15 = load i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

; <label>:17                                      ; preds = %13
  %18 = load i32* %4, align 4
  %19 = mul nsw i32 3, %18
  br label %23

; <label>:20                                      ; preds = %13
  %21 = load i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  br label %23

; <label>:23                                      ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %b, align 4
  %25 = load i32* %a, align 4
  %26 = load i32* %b, align 4
  %27 = add nsw i32 %25, %26
  ret i32 %27
}

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 "}
