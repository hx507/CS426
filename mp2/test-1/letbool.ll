declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
define i32 @Main.main() {
	%vtpm.0 = alloca i1
	store i1 true, i1* %vtpm.0
	%vtpm.1 = load i1, i1* %vtpm.0
	%vtpm.2 = alloca i32
	br i1 %vtpm.1, label %if_true0, label %if_false1

if_true0:
	store i32 1, i32* %vtpm.2
	br label %end_if1

if_false1:
	store i32 0, i32* %vtpm.2
	br label %end_if1

end_if1:
	%vtpm.3 = load i32, i32* %vtpm.2
	ret i32 %vtpm.3

abort:
	call void @abort(  )
	unreachable
}

@main.printout.str = internal constant [25 x i8] c"Main.main() returned %d\0A\00"
define i32 @main() {

entry:
	%vtpm.5 = call i32 @Main.main(  )
	%vtpm.6 = getelementptr [25 x i8], [25 x i8]* @main.printout.str, i32 0, i32 0
	%vtpm.7 = call i32(i8*, ... ) @printf( i8* %vtpm.6, i32 %vtpm.5 )
	ret i32 0
}

