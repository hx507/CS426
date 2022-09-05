/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially */
%{
#include <cool-parse.h>
#include <stringtab.h>
#include <utilities.h>

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
  if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
    YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST+1]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;

extern YYSTYPE cool_yylval;

#define RETURN_AS(field, val, type) {cool_yylval.field = val; return type;}
#define RETURN_ID_AS(field, val, type) RETURN_AS(field, idtable.add_string(val), type)
#define RETURN_STRING_AS(field, val, type) RETURN_AS(field, stringtable.add_string(val), type)
#define RETURN_AS_ERR(msg) RETURN_AS(error_msg, msg, ERROR);

#define TRY_ADD_TO_BUF(c) { if(str_len>MAX_STR_CONST) \
                                RETURN_AS_ERR("String literal too long");\
                            string_buf[str_len++] = c;}

/*
 *  Add Your own definitions here
 */
int comment_depth = 0;
int str_len = 0;

%}

%option noyywrap

/*
 * Define names for regular expressions here.
 */

/* Starting conditions for comments & strings */
%x COMMENT_START
%x STRING_START


digit       [0-9]
/* characters valid to be used in naming: letters, digit, underscore */
name_char   [A-Za-z0-9_] 
type_id     [A-Z]{name_char}*
obj_id      [a-z]{name_char}*
/* any sequence of: blank (ascii 32), \n (newline, ascii 10), \f (form feed, ascii 12), \r (carriage return, ascii 13), \t (tab, ascii 9), \v (vertical tab, ascii 11) */
white_space [ \n\f\r\t\v]

%%

 /*
  * Define regular expressions for the tokens of COOL here. Make sure, you
  * handle correctly special cases, like:
  *   - Nested comments
  *   - String constants: They use C like systax and can contain escape
  *     sequences. Escape sequence \c is accepted for all characters c. Except
  *     for \n \t \b \f, the result is c.
  *   - Keywords: They are case-insensitive except for the values true and
  *     false, which must begin with a lower-case letter.
  *   - Multiple-character operators (like <-): The scanner should produce a
  *     single token for every such operator.
  *   - Line counting: You should keep the global variable curr_lineno updated
  *     with the correct line number
  */

 /* Line number maintenance */
\n {curr_lineno++;}


 /* Integers: non-empty strings of digits 0-9 */
{digit}+    { RETURN_AS(symbol, inttable.add_string(yytext), INT_CONST); }


 /* Special syntactic symbols: given in fig 1 */
 /* (single character symbols are represented by its ASCII val) */
[+\-*/~<=();,{}.@:] { return *yytext; }
(<-) {return ASSIGN;}
(<=)  {return LE;}
(>=)  {return DARROW;}


 /* Keywords: class, else, false, fi, if, in, inherits, isvoid, let, loop, pool, then, while, case, esac, new, of, not, true
  *     - All case incentive, ?i: in regex
  *     - Need to have higher priority than ids! */
(?i:class)   { return CLASS; }
(?i:else)    { return ELSE; }
(?i:fi)      { return FI; }
(?i:if)      { return IF; }
(?i:in)      { return IN; }
(?i:inherits) { return INHERITS; }
(?i:isvoid)  { return ISVOID; }
(?i:let)     { return LET; }
(?i:loop)    { return LOOP; }
(?i:pool)    { return POOL; }
(?i:then)    { return THEN; }
(?i:while)   { return WHILE; }
(?i:case)    { return CASE; }
(?i:esac)    { return ESAC; }
(?i:new)     { return NEW; }
(?i:of)      { return OF; }
(?i:not)     { return NOT; }
 /*     - Except true/false, where 1st letter must be lower-case */
t(?i:rue)    { RETURN_AS(boolean, true, BOOL_CONST); }
f(?i:alse)   { RETURN_AS(boolean, false, BOOL_CONST); }


 /* Identifiers: 
 *      - strings (other than keywords) consisting of letters, digits, and the underscore character 
 *      - Type id: begin with a capital letter
 *      - Object id: begin with a lower case letter 
 *      - Special id: self, SELF-TYPE: treated specially by Cool but are not treated as keywords (handled implicitly) */
{type_id}     { RETURN_ID_AS(symbol, yytext, TYPEID); }
{obj_id}      { RETURN_ID_AS(symbol, yytext, OBJECTID) }


 /* Strings */
\"                    { str_len=0; BEGIN(STRING_START); }

<STRING_START>\n      { BEGIN(0); curr_lineno++; RETURN_AS_ERR("Unterminated string constant"); }
<STRING_START><<EOF>> { BEGIN(0); RETURN_AS_ERR("Unterminated string constant"); }
<STRING_START>\"      { BEGIN(0);
                        string_buf[str_len]=0; 
                        RETURN_STRING_AS(symbol, string_buf, STR_CONST); }
 /* Special escaped characters in string */
<STRING_START>\\b     { TRY_ADD_TO_BUF('\b'); }
<STRING_START>\\t     { TRY_ADD_TO_BUF('\t'); }
<STRING_START>\\n     { TRY_ADD_TO_BUF('\n'); }
<STRING_START>\\f     { TRY_ADD_TO_BUF('\f'); }
<STRING_START>\\(\n)  { TRY_ADD_TO_BUF('\n'); curr_lineno++; }
 /* other escapes are treated as \x -> x */
<STRING_START>\\.     { TRY_ADD_TO_BUF(yytext[1]); }
<STRING_START>.       { TRY_ADD_TO_BUF(*yytext); }


 /* Comments */
 /* Haskell style comments: -- this is a comment */
(--[^\n]*) {}

 /* Cool style comments: (* this is a comment *) 
  *     - maintain comment_depth to support nested comments, exit when depth=0*/
"(\*" { BEGIN(COMMENT_START); comment_depth++;}

<COMMENT_START>"\n"     { curr_lineno++; }
<COMMENT_START>"(\*"    { comment_depth++;}
<COMMENT_START><<EOF>>  { comment_depth=0; BEGIN(0); RETURN_AS_ERR("EOF in comment"); }
<COMMENT_START>. { /* ignore other stuff in comment */ }

<COMMENT_START>"\*\)"   { comment_depth--; if(comment_depth==0) BEGIN(0);}

 /* Detect extra closing comment */
"\*\)" {RETURN_AS_ERR("Unmatched closing comment '*)'");}


 /* Detect extra closing comment */



 /* White Space, ignore */
{white_space} {}


 /* Invalid character */
. { RETURN_AS_ERR(yytext);}

%%
