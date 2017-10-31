%{
#include<stdio.h>
#undef yywrap
#define yywrap() 1 	
int c=0;
%}
key [int|float|double|char|main|void|cin|cout|return]
digit [0-9]
chars [a-zA-Z]
%%
{key}+ {printf("%s is a keyword",yytext);}
{digit}+{chars}+ {printf("DigiChar");}
{chars}+{digit}+ {printf("CharDig");}
{digit}+ {printf("%s is an integer ",yytext);}
{digit}+.{digit}+ {printf("Float");}
{chars}+|{chars}+{digit}+{chars}+ {printf("%s maybe a variable",yytext);}
%%
int main(){
	yylex();
	return 0;
}	