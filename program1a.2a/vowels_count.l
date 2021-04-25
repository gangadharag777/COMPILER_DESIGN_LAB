%{
	int c=0,v=0;
%}

%%

[aeiouAEIOU] v++;
[a-zA-Z] c++;
.;
:wq
\n return 0;

%%

int main()
{
	printf("enter the  string\n");
	yylex();
	printf("vowels=%d\n consonates=%d\n",v,c);
}





