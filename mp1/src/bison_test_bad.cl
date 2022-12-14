
(*
 *  execute "../reference-binaries/lexer bad.cl | ../reference-binaries/parser"
 *  to see the error messages that the reference parser generates
 *
 *  execute "./lexer bad.cl | ./parser" to see the error messages that your
 *  parser generates
 *)

(* no error *)
class A {
};

(* error:  multiple errors *)
Class cc inherts A {
};

(* error:  b is not a type identifier *)
Class b inherits A {
};

(* error:  a is not a type identifier *)
Class C inherits a {
};

(* error:  keyword inherits is misspelled *)
Class D inherts A {
};

(* error:  wrong stuff in class *)
Class D inherits A {
    fsdakl;
    gfarw
};

(* error:  closing brace is missing *)
Class E inherits A {
;

