; ModuleID = 'ternary.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define i32 @test(i32 %cond1, i32 %x, i32 %cond2, i32 %y) #0 {
  %1 = icmp eq i32 %cond1, 0
  br i1 %1, label %4, label %2

; <label>:2                                       ; preds = %0
  %3 = mul nsw i32 %x, 5
  br label %6

; <label>:4                                       ; preds = %0
  %5 = add nsw i32 %x, 1
  br label %6

; <label>:6                                       ; preds = %4, %2
  %7 = phi i32 [ %3, %2 ], [ %5, %4 ]
  %8 = icmp eq i32 %cond2, 0
  br i1 %8, label %11, label %9

; <label>:9                                       ; preds = %6
  %10 = mul nsw i32 %y, 3
  br label %13

; <label>:11                                      ; preds = %6
  %12 = add nsw i32 %y, -1
  br label %13

; <label>:13                                      ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = add nsw i32 %14, %7
  ret i32 %15
}

attributes #0 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 "}
