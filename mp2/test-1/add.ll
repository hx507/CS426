declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main.main() {
	%vtpm.0 = add i32 1, 2
	ret i32 %vtpm.0

abort:
	call void @abort(  )
	unreachable
}

@main.printout.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.2 = call i32 @Main.main(  )
	%vtpm.3 = getelementptr [25 x i8], [25 x i8]* @main.printout.str, i32 0, i32 0
	%vtpm.4 = call i32(i8*, ... ) @printf( i8* %vtpm.3, i32 %vtpm.2 )
	ret i32 0
}

