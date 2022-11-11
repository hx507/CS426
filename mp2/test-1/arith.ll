declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main.main() {
	%vtpm.0 = icmp eq i32 2, 0
	br i1 %vtpm.0, label %abort, label %ok.0

ok.0:
	%vtpm.1 = sdiv i32 8, 2
	%vtpm.2 = add i32 1, %vtpm.1
	ret i32 %vtpm.2

abort:
	call void @abort(  )
	unreachable
}

@main.printout.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.4 = call i32 @Main.main(  )
	%vtpm.5 = getelementptr [25 x i8], [25 x i8]* @main.printout.str, i32 0, i32 0
	%vtpm.6 = call i32(i8*, ... ) @printf( i8* %vtpm.5, i32 %vtpm.4 )
	ret i32 0
}

