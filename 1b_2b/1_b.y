%{
#include<stdio.h>
#include<string.h>
#include<stdlib.h>
%}


%%
S:E F 
E:'a' E 'b'
 | ;
 F:'b' F 'c'

| ;

%%

int main()
{
while(1)
{
printf("enter the string:");
yyparse();
printf("string accepted\n");
}
}

int yyerror()
{
printf("string not accepted\n");
exit(0);
}



