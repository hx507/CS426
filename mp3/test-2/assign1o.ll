declare i32 @strcmp(i8*, i8*)
declare i32 @printf(i8*, ...)
declare void @abort()
declare i8* @malloc(i32)
declare %Object* @Object_new()
declare %Object* @Object_abort(%Object*)
declare %String* @Object_type_name(%Object*)
declare %Object* @Object_copy(%Object*)
declare %IO* @IO_new()
declare %IO* @IO_out_string(%IO*, %String*)
declare %IO* @IO_out_int(%IO*, i32)
declare %String* @IO_in_string(%IO*)
declare i32 @IO_in_int(%IO*)
declare %String* @String_new()
declare i32 @String_length(%String*)
declare %String* @String_concat(%String*, %String*)
declare %String* @String_substr(%String*, i32, i32)
declare %Int* @Int_new()
declare %Bool* @Bool_new()
declare %Bool* @create_Bool(%Bool*, i1)
declare %Int* @create_Int(%Int*, i32)
@str.Object = internal constant [7 x i8] c"Object\00"
%Object = type {
	%_Object_vtable*
}

%_Object_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *
}

@_Object_vtable_prototype = constant %_Object_vtable {
	i32 0,
	i32 ptrtoint (%Object* getelementptr (%Object, %Object* null, i32 1) to i32),
	i8* getelementptr ([7 x i8], [7 x i8]* @str.Object, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy
}

@str.Int = internal constant [4 x i8] c"Int\00"
%Int = type {
	%_Int_vtable*,
	i32
}

%_Int_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *
}

@_Int_vtable_prototype = constant %_Int_vtable {
	i32 1,
	i32 ptrtoint (%Int* getelementptr (%Int, %Int* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Int, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy
}

@str.Bool = internal constant [5 x i8] c"Bool\00"
%Bool = type {
	%_Bool_vtable*,
	i1
}

%_Bool_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *
}

@_Bool_vtable_prototype = constant %_Bool_vtable {
	i32 2,
	i32 ptrtoint (%Bool* getelementptr (%Bool, %Bool* null, i32 1) to i32),
	i8* getelementptr ([5 x i8], [5 x i8]* @str.Bool, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy
}

@str.String = internal constant [7 x i8] c"String\00"
%String = type {
	%_String_vtable*,
	i8*
}

%_String_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *,
	i32 (%String*) *,
	%String* (%String*,%String*) *,
	%String* (%String*,i32,i32) *
}

@_String_vtable_prototype = constant %_String_vtable {
	i32 3,
	i32 ptrtoint (%String* getelementptr (%String, %String* null, i32 1) to i32),
	i8* getelementptr ([7 x i8], [7 x i8]* @str.String, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy,
	i32 (%String*) * @String_length,
	%String* (%String*,%String*) * @String_concat,
	%String* (%String*,i32,i32) * @String_substr
}

@str.IO = internal constant [3 x i8] c"IO\00"
%IO = type {
	%_IO_vtable*
}

%_IO_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *,
	%IO* (%IO*,%String*) *,
	%IO* (%IO*,i32) *,
	%String* (%IO*) *,
	i32 (%IO*) *
}

@_IO_vtable_prototype = constant %_IO_vtable {
	i32 4,
	i32 ptrtoint (%IO* getelementptr (%IO, %IO* null, i32 1) to i32),
	i8* getelementptr ([3 x i8], [3 x i8]* @str.IO, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy,
	%IO* (%IO*,%String*) * @IO_out_string,
	%IO* (%IO*,i32) * @IO_out_int,
	%String* (%IO*) * @IO_in_string,
	i32 (%IO*) * @IO_in_int
}

@str.Main = internal constant [5 x i8] c"Main\00"
%Main = type {
	%_Main_vtable*,
	i32,
	i32,
	i32,
	%IO*,
	%String*,
	%String*
}

%_Main_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *,
	%IO* (%IO*,%String*) *,
	%IO* (%IO*,i32) *,
	%String* (%IO*) *,
	i32 (%IO*) *,
	i32 (%Main*) *
}

@_Main_vtable_prototype = constant %_Main_vtable {
	i32 5,
	i32 ptrtoint (%Main* getelementptr (%Main, %Main* null, i32 1) to i32),
	i8* getelementptr ([5 x i8], [5 x i8]* @str.Main, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy,
	%IO* (%IO*,%String*) * @IO_out_string,
	%IO* (%IO*,i32) * @IO_out_int,
	%String* (%IO*) * @IO_in_string,
	i32 (%IO*) * @IO_in_int,
	i32 (%Main*) * @Main_main
}

@str.2 = internal constant [14 x i8] c"<basic class>\00"
@String.2 = constant %String {
	%_String_vtable* @_String_vtable_prototype,
	i8* getelementptr ([14 x i8], [14 x i8]* @str.2, i32 0, i32 0)
}

@str.1 = internal constant [4 x i8] c"aaa\00"
@String.1 = constant %String {
	%_String_vtable* @_String_vtable_prototype,
	i8* getelementptr ([4 x i8], [4 x i8]* @str.1, i32 0, i32 0)
}

@str.0 = internal constant [12 x i8] c"assign1o.cl\00"
@String.0 = constant %String {
	%_String_vtable* @_String_vtable_prototype,
	i8* getelementptr ([12 x i8], [12 x i8]* @str.0, i32 0, i32 0)
}

define i32 @main() {

entry:
	%vtpm.0 = call %Main*( ) @Main_new(  )
	%vtpm.1 = call i32(%Main* ) @Main_main( %Main* %vtpm.0 )
	ret i32 0
}

define i32 @Main_main(%Main* %self) {
	%vtpm.2 = getelementptr %Main, %Main* %self, i32 0, i32 4
	%vtpm.3 = load %IO*, %IO** %vtpm.2
	%vtpm.4 = call %IO*(%IO*, i32 ) @IO_out_int( %IO* %vtpm.3, i32 198 )
	ret i32 1

abort:
	call void @abort(  )
	unreachable
}

define %Main* @Main_new() {

entry:
	%vtpm.6 = getelementptr %_Main_vtable, %_Main_vtable* @_Main_vtable_prototype, i32 0, i32 1
	%vtpm.7 = load i32, i32* %vtpm.6
	%vtpm.8 = call i8* @malloc(i32 %vtpm.7)
	%vtpm.9 = bitcast i8* %vtpm.8 to %Main*
	%vtpm.10 = icmp eq %Main* %vtpm.9, null
	br i1 %vtpm.10, label %abort, label %ok.0

ok.0:
	%vtpm.11 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 0
	store %_Main_vtable* @_Main_vtable_prototype, %_Main_vtable** %vtpm.11
	%vtpm.12 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 1
	store i32 5, i32* %vtpm.12
	%vtpm.13 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 2
	store i32 0, i32* %vtpm.13
	%vtpm.14 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 3
	store i32 7, i32* %vtpm.14
	%vtpm.15 = call %IO* @IO_new(  )
	%vtpm.16 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 4
	store %IO* %vtpm.15, %IO** %vtpm.16
	%vtpm.17 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 5
	store %String* @String.1, %String** %vtpm.17
	%vtpm.18 = call %String* @String_new(  )
	%vtpm.19 = getelementptr %Main, %Main* %vtpm.9, i32 0, i32 6
	store %String* %vtpm.18, %String** %vtpm.19
	ret %Main* %vtpm.9

abort:
	call void @abort(  )
	unreachable
}

