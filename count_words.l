%{
#include<stdio.h>
#include<stdlib.h>
#undef yywrap
#define yywrap() 1
int words=0,chars=0,spaces=0,lines=0;
%}

letters [a-zA-Z]
%%
[\n]|[.] {lines++;}
[ \t] {spaces++;}
{letters} {chars++;}
%%
void main(){
	yyin=fopen("text.txt","r");
	yylex();
	printf("\nWords: %d\nChars: %d\nSpaces: %d\nLines: %d",spaces+1,chars,spaces,lines);
}
