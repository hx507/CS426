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

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;

extern YYSTYPE cool_yylval;

#define RETURN_STRING_AS(field, val, type) {cool_yylval.field = inttable.add_string(val); return type;}

/*
 *  Add Your own definitions here
 */

%}

%option noyywrap

/*
 * Define names for regular expressions here.
 */

digit       [0-9]
/* characters valid to be used in naming: letters, digit, underscore */
name_char   [A-Za-z0-9_] 
type_id     [A-Z]{name_char}*
obj_id      [a-z]{name_char}*

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

 /* Integers: 
 *      - non-empty strings of digits 0-9 */
{digit}+    { RETURN_STRING_AS(symbol, yytext, INT_CONST); }

 /* Identifiers: 
 *      - strings (other than keywords) consisting of letters, digits, and the underscore character 
 *      - Type id: begin with a capital letter
 *      - Object id: begin with a lower case letter 
 *      - Special id: self, SELF-TYPE: treated specially by Cool but are not treated as keywords (handled implicitly) */
{type_id}     { RETURN_STRING_AS(symbol, yytext, TYPEID); }
{obj_id}      { RETURN_STRING_AS(symbol, yytext, OBJECTID) }

 /* Special syntactic symbols: 
 *      - given in fig 1 
 *      - TODO*/

 /* Keywords:
  *     - All case incentive, (?i) in regex
  *     - Except true/false, where 1st letter must be lower-case*/



 /* Strings */
 /* Comments */
 /* White Space */

%%
