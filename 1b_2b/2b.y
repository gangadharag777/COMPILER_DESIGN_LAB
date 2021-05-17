%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}
%token ID NUM
%left '*' '/'
%left '+' '-'
%start S

%%
S:E {printf("\nvalid expression\nresult:%d\n",$1);}
 E:E '+' E {$$=$1+$3;}
| '(' E ')' {$$=$2;}
| E '*' E {$$=$1*$3;}
| E '/' E {$$=$1/$3;}
| E '-' E {$$=$1-$3;}
| '-' NUM {$$=-$1;}
| NUM {$$=$1;}
%%

int main()
{
printf("Enter the  expression\n");
yyparse();
}
int yyerror()
{
printf("Not a valid expression\n");
exit(0);
}

