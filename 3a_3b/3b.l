%{
    #include "y.tab.h"
    extern yylval;
%}

alpha [A-Za-z]
digit [0-9]

%%
[\t \n]
int|float|void|char {return TYPE;}
for {return FOR;}
"<=" {return LE;}
">=" {return GE;}
"==" {return EQ;}
"!=" {return NE;}
return  {return RETURN;}
{digit}+ {return NUM;}
{alpha}({alpha}|{digit})* {return ID;}
. {return yytext[0];}

%%
int yywrap(){}
