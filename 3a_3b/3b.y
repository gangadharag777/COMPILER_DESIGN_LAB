%{
#include <stdio.h>
#include <stdlib.h>
%}
%token TYPE RETURN ID NUM FOR LE GE EQ NE
%right "="
%left '>' '<' LE GE EQ NE
%left '+' '-'
%left '*' '/'
%right UMINUS
%left '!'

%%

S: FUN {printf("Valid code No errors..\n"); exit(0);}
FUN: TYPE ID '(' PARAM ')' '{' BODY '}'     
;
PARAM: PARAM ',' TYPE ID
    | TYPE ID
    |
    ;         
BODY: BODY BODY
    | PARAM ';'
    | E ';'        
    | RETURN E ';'
    | FORL
    |
    ;              

FORL: ST
ST : FOR'(' E ';' COMPARE ';' E ')' BOD ;

BOD : '{' FBODY '}'
        | E';'
        | ST
        | ;
FBODY : FBODY FBODY
           | E ';'       
           | ST
           | ;
       
E : ID '=' E
    | E '+' E
    | E '-' E
    | E '*' E
    | E '/' E
    | E '+' '+'
    | E '-' '-'
    | ID 
    | NUM
    ;
   
COMPARE : E '<' E
   | E '>' E
   | E LE E
   | E GE E
   | E EQ E
   | E NE E
   ;   

%%

int main()
{
    printf("Enter code for function definition\n");
    yyparse();
 }
int yyerror(char* s) {
	printf("\n Syntax error\n");
}
