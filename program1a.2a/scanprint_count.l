printf printf
scanf scanf
other .


%{
#include<stdio.h>
#include<math.h>
int p=0,s=0;
%}

%%

{printf} {p++;fprintf(yyout,"readf");}
{scanf} {s++;fprintf(yyout,"writef");}
{other} {fprintf(yyout,"%s",yytext);}
\n {fprintf(yyout,"\n");}

%%


int main()
{

yyin=fopen("example2.l","r+");
yyout=fopen("out.c","r+");
yylex();
printf("the no. printf=%d\nthe no. scanf=%d\n",p,s);
}

