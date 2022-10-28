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
declare %Bool* @create_Bool(i1)
declare %Int* @create_Int(i32)
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
	%_Main_vtable*
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
	%Object* (%Main*) *
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
	%Object* (%Main*) * @Main_main
}

@str.Foo = internal constant [4 x i8] c"Foo\00"
%Foo = type {
	%_Foo_vtable*
}

%_Foo_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *,
	%Foo* (%Foo*) *
}

@_Foo_vtable_prototype = constant %_Foo_vtable {
	i32 6,
	i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Foo, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy,
	%Foo* (%Foo*) * @Foo_a
}

@str.Bar = internal constant [4 x i8] c"Bar\00"
%Bar = type {
	%_Bar_vtable*
}

%_Bar_vtable = type {
	i32,
	i32,
	i8*,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *,
	%Bar* (%Bar*) *,
	i32 (%Bar*,i32) *
}

@_Bar_vtable_prototype = constant %_Bar_vtable {
	i32 7,
	i32 ptrtoint (%Bar* getelementptr (%Bar, %Bar* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Bar, i32 0, i32 0),
	%Object* (%Object*) * @Object_abort,
	%String* (%Object*) * @Object_type_name,
	%Object* (%Object*) * @Object_copy,
	%Bar* (%Bar*) * @Bar_a,
	i32 (%Bar*,i32) * @Bar_b
}

@str.1 = internal constant [14 x i8] c"<basic class>\00"
@String.1 = constant %String {
	%_String_vtable* @_String_vtable_prototype,
	i8* getelementptr ([14 x i8], [14 x i8]* @str.1, i32 0, i32 0)
}

@str.0 = internal constant [15 x i8] c"dispatch7_o.cl\00"
@String.0 = constant %String {
	%_String_vtable* @_String_vtable_prototype,
	i8* getelementptr ([15 x i8], [15 x i8]* @str.0, i32 0, i32 0)
}

define i32 @main() {

entry:
	%vtpm.0 = call %Main*( ) @Main_new(  )
	%vtpm.1 = call %Object*(%Main* ) @Main_main( %Main* %vtpm.0 )
	ret i32 0
}

define %Object* @Main_main(%Main* %self) {
	%self_ptr = alloca %Main*
	store %Main* %self, %Main** %self_ptr
	%vtpm.2 = load %Main*, %Main** %self_ptr
	%vtpm.3 = call %Bar* @Bar_new(  )
	%vtpm.4 = icmp eq %Bar* %vtpm.3, null
	br i1 %vtpm.4, label %abort, label %ok.0

ok.0:
	%vtpm.5 = bitcast %Bar* %vtpm.3 to %Foo*
	%vtpm.6 = call %Foo*(%Foo* ) @Foo_a( %Foo* %vtpm.5 )
	%vtpm.7 = bitcast %Foo* %vtpm.6 to %Bar*
	%vtpm.8 = getelementptr %Bar, %Bar* %vtpm.7, i32 0, i32 0
	%vtpm.9 = load %_Bar_vtable*, %_Bar_vtable** %vtpm.8
	%vtpm.10 = getelementptr %_Bar_vtable, %_Bar_vtable* %vtpm.9, i32 0, i32 7
	%tmp.0 = load i32 (%Bar*,i32) *, i32 (%Bar*,i32) ** %vtpm.10
	%tmp.1 = call i32(%Bar*, i32 ) %tmp.0( %Bar* %vtpm.7, i32 1 )
	%vtpm.11 = getelementptr %Main, %Main* %vtpm.2, i32 0, i32 0
	%vtpm.12 = load %_Main_vtable*, %_Main_vtable** %vtpm.11
	%vtpm.13 = getelementptr %_Main_vtable, %_Main_vtable* %vtpm.12, i32 0, i32 7
	%tmp.2 = load %IO* (%IO*,i32) *, %IO* (%IO*,i32) ** %vtpm.13
	%vtpm.14 = bitcast %Main* %vtpm.2 to %IO*
	%tmp.3 = call %IO*(%IO*, i32 ) %tmp.2( %IO* %vtpm.14, i32 %tmp.1 )
	%vtpm.15 = bitcast %IO* %tmp.3 to %Object*
	ret %Object* %vtpm.15

abort:
	call void @abort(  )
	unreachable
}

define %Main* @Main_new() {

entry:
	%vtpm.17 = getelementptr %_Main_vtable, %_Main_vtable* @_Main_vtable_prototype, i32 0, i32 1
	%vtpm.18 = load i32, i32* %vtpm.17
	%vtpm.19 = call i8* @malloc(i32 %vtpm.18)
	%vtpm.20 = bitcast i8* %vtpm.19 to %Main*
	%vtpm.21 = icmp eq %Main* %vtpm.20, null
	br i1 %vtpm.21, label %abort, label %ok.1

ok.1:
	%self_ptr = alloca %Main*
	store %Main* %vtpm.20, %Main** %self_ptr
	%vtpm.22 = getelementptr %Main, %Main* %vtpm.20, i32 0, i32 0
	store %_Main_vtable* @_Main_vtable_prototype, %_Main_vtable** %vtpm.22
	ret %Main* %vtpm.20

abort:
	call void @abort(  )
	unreachable
}

define %Foo* @Foo_a(%Foo* %self) {
	%self_ptr = alloca %Foo*
	store %Foo* %self, %Foo** %self_ptr
	%vtpm.24 = load %Foo*, %Foo** %self_ptr
	ret %Foo* %vtpm.24

abort:
	call void @abort(  )
	unreachable
}

define %Foo* @Foo_new() {

entry:
	%vtpm.26 = getelementptr %_Foo_vtable, %_Foo_vtable* @_Foo_vtable_prototype, i32 0, i32 1
	%vtpm.27 = load i32, i32* %vtpm.26
	%vtpm.28 = call i8* @malloc(i32 %vtpm.27)
	%vtpm.29 = bitcast i8* %vtpm.28 to %Foo*
	%vtpm.30 = icmp eq %Foo* %vtpm.29, null
	br i1 %vtpm.30, label %abort, label %ok.0

ok.0:
	%self_ptr = alloca %Foo*
	store %Foo* %vtpm.29, %Foo** %self_ptr
	%vtpm.31 = getelementptr %Foo, %Foo* %vtpm.29, i32 0, i32 0
	store %_Foo_vtable* @_Foo_vtable_prototype, %_Foo_vtable** %vtpm.31
	ret %Foo* %vtpm.29

abort:
	call void @abort(  )
	unreachable
}

define %Bar* @Bar_a(%Bar* %self) {
	%self_ptr = alloca %Bar*
	store %Bar* %self, %Bar** %self_ptr
	%vtpm.33 = load %Bar*, %Bar** %self_ptr
	ret %Bar* %vtpm.33

abort:
	call void @abort(  )
	unreachable
}

define i32 @Bar_b(%Bar* %self, i32 %y) {
	%self_ptr = alloca %Bar*
	store %Bar* %self, %Bar** %self_ptr
	%y_ptr = alloca i32
	store i32 %y, i32* %y_ptr
	ret i32 1

abort:
	call void @abort(  )
	unreachable
}

define %Bar* @Bar_new() {

entry:
	%vtpm.36 = getelementptr %_Bar_vtable, %_Bar_vtable* @_Bar_vtable_prototype, i32 0, i32 1
	%vtpm.37 = load i32, i32* %vtpm.36
	%vtpm.38 = call i8* @malloc(i32 %vtpm.37)
	%vtpm.39 = bitcast i8* %vtpm.38 to %Bar*
	%vtpm.40 = icmp eq %Bar* %vtpm.39, null
	br i1 %vtpm.40, label %abort, label %ok.0

ok.0:
	%self_ptr = alloca %Bar*
	store %Bar* %vtpm.39, %Bar** %self_ptr
	%vtpm.41 = getelementptr %Bar, %Bar* %vtpm.39, i32 0, i32 0
	store %_Bar_vtable* @_Bar_vtable_prototype, %_Bar_vtable** %vtpm.41
	ret %Bar* %vtpm.39

abort:
	call void @abort(  )
	unreachable
}

