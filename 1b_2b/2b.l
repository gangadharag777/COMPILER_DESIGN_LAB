%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
"+" {return '+';}
"-" {return '-';}
"*" {return '*';}
"/" {return '/';}
"(" {return '(';}
")" {return ')';}
[a-zA-Z]([a-zA-Z]|[0-9])* {return ID;}
[0-9]+ {yylval=atoi(yytext); return NUM;}
. {return yytext[0];}
\n {return 0;}
%%
int yywrap(){}


