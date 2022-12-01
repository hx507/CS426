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
declare void @Int_init(%Int*, i32)
declare %Bool* @Bool_new()
declare void @Bool_init(%Bool*, i1)
@str.Object = internal constant [7 x i8] c"Object\00"
%Object = type {
	%_Object_vtable*
}

%_Object_vtable = type {
	i32,
	i32,
	i8*,
	%Object* () *,
	%Object* (%Object*) *,
	%String* (%Object*) *,
	%Object* (%Object*) *
}

@_Object_vtable_prototype = constant %_Object_vtable {
	i32 0,
	i32 ptrtoint (%Object* getelementptr (%Object, %Object* null, i32 1) to i32),
	i8* getelementptr ([7 x i8], [7 x i8]* @str.Object, i32 0, i32 0),
	%Object* () * @Object_new,
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
	%Int* () *,
	%Object* (%Int*) *,
	%String* (%Int*) *,
	%Int* (%Int*) *
}

@_Int_vtable_prototype = constant %_Int_vtable {
	i32 1,
	i32 ptrtoint (%Int* getelementptr (%Int, %Int* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Int, i32 0, i32 0),
	%Int* () * @Int_new,
	%Object* (%Int*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%Int*) *),
	%String* (%Int*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%Int*) *),
	%Int* (%Int*) * bitcast (%Object* (%Object*) * @Object_copy to %Int* (%Int*) *)
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
	%Bool* () *,
	%Object* (%Bool*) *,
	%String* (%Bool*) *,
	%Bool* (%Bool*) *
}

@_Bool_vtable_prototype = constant %_Bool_vtable {
	i32 2,
	i32 ptrtoint (%Bool* getelementptr (%Bool, %Bool* null, i32 1) to i32),
	i8* getelementptr ([5 x i8], [5 x i8]* @str.Bool, i32 0, i32 0),
	%Bool* () * @Bool_new,
	%Object* (%Bool*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%Bool*) *),
	%String* (%Bool*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%Bool*) *),
	%Bool* (%Bool*) * bitcast (%Object* (%Object*) * @Object_copy to %Bool* (%Bool*) *)
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
	%String* () *,
	%Object* (%String*) *,
	%String* (%String*) *,
	%String* (%String*) *,
	i32 (%String*) *,
	%String* (%String*,%String*) *,
	%String* (%String*,i32,i32) *
}

@_String_vtable_prototype = constant %_String_vtable {
	i32 3,
	i32 ptrtoint (%String* getelementptr (%String, %String* null, i32 1) to i32),
	i8* getelementptr ([7 x i8], [7 x i8]* @str.String, i32 0, i32 0),
	%String* () * @String_new,
	%Object* (%String*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%String*) *),
	%String* (%String*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%String*) *),
	%String* (%String*) * bitcast (%Object* (%Object*) * @Object_copy to %String* (%String*) *),
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
	%IO* () *,
	%Object* (%IO*) *,
	%String* (%IO*) *,
	%IO* (%IO*) *,
	%IO* (%IO*,%String*) *,
	%IO* (%IO*,i32) *,
	%String* (%IO*) *,
	i32 (%IO*) *
}

@_IO_vtable_prototype = constant %_IO_vtable {
	i32 4,
	i32 ptrtoint (%IO* getelementptr (%IO, %IO* null, i32 1) to i32),
	i8* getelementptr ([3 x i8], [3 x i8]* @str.IO, i32 0, i32 0),
	%IO* () * @IO_new,
	%Object* (%IO*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%IO*) *),
	%String* (%IO*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%IO*) *),
	%IO* (%IO*) * bitcast (%Object* (%Object*) * @Object_copy to %IO* (%IO*) *),
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
	%Main* () *,
	%Object* (%Main*) *,
	%String* (%Main*) *,
	%Main* (%Main*) *,
	%Main* (%Main*,%String*) *,
	%Main* (%Main*,i32) *,
	%String* (%Main*) *,
	i32 (%Main*) *,
	%Object* (%Main*) *
}

@_Main_vtable_prototype = constant %_Main_vtable {
	i32 5,
	i32 ptrtoint (%Main* getelementptr (%Main, %Main* null, i32 1) to i32),
	i8* getelementptr ([5 x i8], [5 x i8]* @str.Main, i32 0, i32 0),
	%Main* () * @Main_new,
	%Object* (%Main*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%Main*) *),
	%String* (%Main*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%Main*) *),
	%Main* (%Main*) * bitcast (%Object* (%Object*) * @Object_copy to %Main* (%Main*) *),
	%Main* (%Main*,%String*) * bitcast (%IO* (%IO*,%String*) * @IO_out_string to %Main* (%Main*,%String*) *),
	%Main* (%Main*,i32) * bitcast (%IO* (%IO*,i32) * @IO_out_int to %Main* (%Main*,i32) *),
	%String* (%Main*) * bitcast (%String* (%IO*) * @IO_in_string to %String* (%Main*) *),
	i32 (%Main*) * bitcast (i32 (%IO*) * @IO_in_int to i32 (%Main*) *),
	%Object* (%Main*) * @Main.main
}

@str.Foo = internal constant [4 x i8] c"Foo\00"
%Foo = type {
	%_Foo_vtable*
}

%_Foo_vtable = type {
	i32,
	i32,
	i8*,
	%Foo* () *,
	%Object* (%Foo*) *,
	%String* (%Foo*) *,
	%Foo* (%Foo*) *,
	%Foo* (%Foo*) *
}

@_Foo_vtable_prototype = constant %_Foo_vtable {
	i32 6,
	i32 ptrtoint (%Foo* getelementptr (%Foo, %Foo* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Foo, i32 0, i32 0),
	%Foo* () * @Foo_new,
	%Object* (%Foo*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%Foo*) *),
	%String* (%Foo*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%Foo*) *),
	%Foo* (%Foo*) * bitcast (%Object* (%Object*) * @Object_copy to %Foo* (%Foo*) *),
	%Foo* (%Foo*) * @Foo.a
}

@str.Bar = internal constant [4 x i8] c"Bar\00"
%Bar = type {
	%_Bar_vtable*
}

%_Bar_vtable = type {
	i32,
	i32,
	i8*,
	%Bar* () *,
	%Object* (%Bar*) *,
	%String* (%Bar*) *,
	%Bar* (%Bar*) *,
	%Bar* (%Bar*) *,
	i32 (%Bar*,i32) *
}

@_Bar_vtable_prototype = constant %_Bar_vtable {
	i32 7,
	i32 ptrtoint (%Bar* getelementptr (%Bar, %Bar* null, i32 1) to i32),
	i8* getelementptr ([4 x i8], [4 x i8]* @str.Bar, i32 0, i32 0),
	%Bar* () * @Bar_new,
	%Object* (%Bar*) * bitcast (%Object* (%Object*) * @Object_abort to %Object* (%Bar*) *),
	%String* (%Bar*) * bitcast (%String* (%Object*) * @Object_type_name to %String* (%Bar*) *),
	%Bar* (%Bar*) * bitcast (%Object* (%Object*) * @Object_copy to %Bar* (%Bar*) *),
	%Bar* (%Bar*) * @Bar.a,
	i32 (%Bar*,i32) * @Bar.b
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
	%main.obj = call %Main*() @Main_new( )
	%main.retval = call %Object*(%Main*) @Main.main( %Main* %main.obj )
	ret i32 0
}

define %Object* @Main.main(%Main* %self) {

entry:
	%tmp.0 = alloca %Main*
	store %Main* %self, %Main** %tmp.0
	%tmp.1 = call %Bar* @Bar_new(  )
	%tmp.2 = icmp eq %Bar* %tmp.1, null
	br i1 %tmp.2, label %abort, label %ok.2

ok.2:
	%tmp.3 = getelementptr %_Foo_vtable, %_Foo_vtable* @_Foo_vtable_prototype, i32 0, i32 7
	%tmp.4 = load %Foo* (%Foo*) *, %Foo* (%Foo*) ** %tmp.3
	%tmp.5 = bitcast %Bar* %tmp.1 to %Foo*
	%tmp.6 = call %Foo*(%Foo* ) %tmp.4( %Foo* %tmp.5 )
	%tmp.7 = bitcast %Foo* %tmp.6 to %Bar*
	%tmp.8 = icmp eq %Bar* %tmp.7, null
	br i1 %tmp.8, label %abort, label %ok.1

ok.1:
	%tmp.9 = getelementptr %Bar, %Bar* %tmp.7, i32 0, i32 0
	%tmp.10 = load %_Bar_vtable*, %_Bar_vtable** %tmp.9
	%tmp.11 = getelementptr %_Bar_vtable, %_Bar_vtable* %tmp.10, i32 0, i32 8
	%tmp.12 = load i32 (%Bar*,i32) *, i32 (%Bar*,i32) ** %tmp.11
	%tmp.13 = call i32(%Bar*, i32 ) %tmp.12( %Bar* %tmp.7, i32 1 )
	%tmp.14 = load %Main*, %Main** %tmp.0
	%tmp.15 = icmp eq %Main* %tmp.14, null
	br i1 %tmp.15, label %abort, label %ok.0

ok.0:
	%tmp.16 = getelementptr %Main, %Main* %tmp.14, i32 0, i32 0
	%tmp.17 = load %_Main_vtable*, %_Main_vtable** %tmp.16
	%tmp.18 = getelementptr %_Main_vtable, %_Main_vtable* %tmp.17, i32 0, i32 8
	%tmp.19 = load %Main* (%Main*,i32) *, %Main* (%Main*,i32) ** %tmp.18
	%tmp.20 = call %Main*(%Main*, i32 ) %tmp.19( %Main* %tmp.14, i32 %tmp.13 )
	%tmp.21 = bitcast %Main* %tmp.20 to %Object*
	ret %Object* %tmp.21

abort:
	call void @abort(  )
	unreachable
}

define %Main* @Main_new() {

entry:
	%tmp.22 = alloca %Main*
	%tmp.23 = getelementptr %_Main_vtable, %_Main_vtable* @_Main_vtable_prototype, i32 0, i32 1
	%tmp.24 = load i32, i32* %tmp.23
	%tmp.25 = call i8*(i32 ) @malloc( i32 %tmp.24 )
	%tmp.26 = bitcast i8* %tmp.25 to %Main*
	%malloc.null = icmp eq %Main* %tmp.26, null
	br i1 %malloc.null, label %abort, label %okay

okay:
	%tmp.27 = getelementptr %Main, %Main* %tmp.26, i32 0, i32 0
	store %_Main_vtable* @_Main_vtable_prototype, %_Main_vtable** %tmp.27
	store %Main* %tmp.26, %Main** %tmp.22
	ret %Main* %tmp.26

abort:
	call void @abort(  )
	unreachable
}

define %Foo* @Foo.a(%Foo* %self) {

entry:
	%tmp.0 = alloca %Foo*
	store %Foo* %self, %Foo** %tmp.0
	%tmp.1 = load %Foo*, %Foo** %tmp.0
	ret %Foo* %tmp.1

abort:
	call void @abort(  )
	unreachable
}

define %Foo* @Foo_new() {

entry:
	%tmp.2 = alloca %Foo*
	%tmp.3 = getelementptr %_Foo_vtable, %_Foo_vtable* @_Foo_vtable_prototype, i32 0, i32 1
	%tmp.4 = load i32, i32* %tmp.3
	%tmp.5 = call i8*(i32 ) @malloc( i32 %tmp.4 )
	%tmp.6 = bitcast i8* %tmp.5 to %Foo*
	%malloc.null = icmp eq %Foo* %tmp.6, null
	br i1 %malloc.null, label %abort, label %okay

okay:
	%tmp.7 = getelementptr %Foo, %Foo* %tmp.6, i32 0, i32 0
	store %_Foo_vtable* @_Foo_vtable_prototype, %_Foo_vtable** %tmp.7
	store %Foo* %tmp.6, %Foo** %tmp.2
	ret %Foo* %tmp.6

abort:
	call void @abort(  )
	unreachable
}

define %Bar* @Bar.a(%Bar* %self) {

entry:
	%tmp.0 = alloca %Bar*
	store %Bar* %self, %Bar** %tmp.0
	%tmp.1 = load %Bar*, %Bar** %tmp.0
	ret %Bar* %tmp.1

abort:
	call void @abort(  )
	unreachable
}

define i32 @Bar.b(%Bar* %self, i32 %y) {

entry:
	%tmp.2 = alloca %Bar*
	%tmp.3 = alloca i32
	store %Bar* %self, %Bar** %tmp.2
	store i32 %y, i32* %tmp.3
	ret i32 1

abort:
	call void @abort(  )
	unreachable
}

define %Bar* @Bar_new() {

entry:
	%tmp.4 = alloca %Bar*
	%tmp.5 = getelementptr %_Bar_vtable, %_Bar_vtable* @_Bar_vtable_prototype, i32 0, i32 1
	%tmp.6 = load i32, i32* %tmp.5
	%tmp.7 = call i8*(i32 ) @malloc( i32 %tmp.6 )
	%tmp.8 = bitcast i8* %tmp.7 to %Bar*
	%malloc.null = icmp eq %Bar* %tmp.8, null
	br i1 %malloc.null, label %abort, label %okay

okay:
	%tmp.9 = getelementptr %Bar, %Bar* %tmp.8, i32 0, i32 0
	store %_Bar_vtable* @_Bar_vtable_prototype, %_Bar_vtable** %tmp.9
	store %Bar* %tmp.8, %Bar** %tmp.4
	ret %Bar* %tmp.8

abort:
	call void @abort(  )
	unreachable
}

