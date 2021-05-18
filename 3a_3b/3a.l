%{
#include "y.tab.h"
%}

%%
[\t ]   ; 
"for"   {return FOR;}
[a-zA-Z]+  {return VAR;}
[0-9]+     {return NUM;}
'$'    {return 0;}
\n  {return "\n" ;}
. {return *yytext;}
%%

int yywrap(){}

