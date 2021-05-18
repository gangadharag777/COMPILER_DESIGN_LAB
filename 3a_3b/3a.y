%{
    #include<stdio.h>
    int sum =0;
%}

%token NUM VAR FOR

%%
S : S1 
  | S S1 
  |
  ;
S1 : F '{' S '}' {sum++;}
  | VAR '=' NUM ';'
  | VAR '=' VAR ';'
  | I ';'
  ;
F : FOR '(' C ';' C ';' I ')'
  |
  ; 
C : VAR '=' NUM 
  | VAR '=' VAR
  | VAR '<' NUM
  | VAR '>' NUM
  | VAR '>' '=' NUM
  | VAR '<' '=' NUM
  | VAR '=' '=' NUM
  | VAR '!' '=' NUM
  |
  ;
I : VAR '+' '+'
  | VAR '-' '-'
  |
  ;
%%

int main()
{
printf("enter the statement\n");
    yyparse();
    printf("Number of loops=%d\n",sum);
}
int yyerror(char *msg){
   // return printf("error:\n");
}
