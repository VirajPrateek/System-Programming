<<<<<<< HEAD
%{
#include<stdio.h>
#undef yywrap
#define yywrap() 1 	
%}
key int|float|double|char|main|void|cin|cout|return
digit [0-9]+
chars [a-zA-Z]+
operators [+|-|*|%]
multiLine_comment [\/*].*[\/\/]
singleLine_comment [\/\/].*
%%
{key} {printf("%s is a keyword",yytext);}
{digit}{chars} {printf("DigiChar");}
{chars}{digit} {printf("CharDig- a variable?");}
{digit} {printf("%s is an integer ",yytext);}
{digit}.{digit} {printf("%s is a Float",yytext);}
{chars}{digit}|{chars}{digit}?{chars} {printf("%s maybe a variable",yytext);}
{operators}+ {printf("%s is an operator",yytext);}
{multiLine_comment}+ {printf("Multiline comment");}
{singleLine_comment}+ {printf("SingleLine comment");}
. {printf("%s no match",yytext);}
%%
int main(){
	yylex();
	return 0;
=======
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
>>>>>>> 202ed33e7af8dffbdeeee78993ba2c70b5ec4228
}	