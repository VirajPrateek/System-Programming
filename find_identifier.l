%{
#include<stdio.h>
#undef yywrap
#define yywrap() 1
char *a[16];
int i=0;
%}
ident int|float|main|void|double
%%
{ident}+ {a[i++]=yytext;}
%%
void main(){
	yyin=fopen("test.c","r");
	printf("\nIdentifiers are:\n");
	yylex();
	for(i=0;i<5;i++)
		printf("%s",a[i]);

}