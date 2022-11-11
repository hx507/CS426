declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main.main() {
	%vtpm.0 = alloca i32
	store i32 8, i32* %vtpm.0
	%vtpm.3 = alloca i32*
	br label %loop_body0

loop_body0:
	%vtpm.4 = load i32, i32* %vtpm.0
	%vtpm.5 = add i32 %vtpm.4, 1
	store i32 %vtpm.5, i32* %vtpm.0
	store i32* %vtpm.0, i32** %vtpm.3
	%vtpm.6 = load i32, i32* %vtpm.0
	%vtpm.7 = icmp slt i32 %vtpm.6, 10
	br i1 %vtpm.7, label %loop_body0, label %loop_done1

loop_done1:
	%vtpm.8 = load i32*, i32** %vtpm.3
	%vtpm.9 = load i32, i32* %vtpm.0
	ret i32 %vtpm.9

abort:
	call void @abort(  )
	unreachable
}

@main.printout.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.11 = call i32 @Main.main(  )
	%vtpm.12 = getelementptr [25 x i8], [25 x i8]* @main.printout.str, i32 0, i32 0
	%vtpm.13 = call i32(i8*, ... ) @printf( i8* %vtpm.12, i32 %vtpm.11 )
	ret i32 0
}

