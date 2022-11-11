declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main.main() {
	%vtpm.0 = alloca i32
	store i32 10, i32* %vtpm.0
	store i32 10, i32* %vtpm.0
	%vtpm.1 = alloca i32
	store i32 10, i32* %vtpm.1
	%vtpm.2 = load i32, i32* %vtpm.1
	%vtpm.3 = sub i32 %vtpm.2, 2
	store i32 %vtpm.3, i32* %vtpm.1
	%vtpm.4 = load i32, i32* %vtpm.1
	ret i32 %vtpm.4

abort:
	call void @abort(  )
	unreachable
}

@main.printout.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.6 = call i32 @Main.main(  )
	%vtpm.7 = getelementptr [25 x i8], [25 x i8]* @main.printout.str, i32 0, i32 0
	%vtpm.8 = call i32(i8*, ... ) @printf( i8* %vtpm.7, i32 %vtpm.6 )
	ret i32 0
}

