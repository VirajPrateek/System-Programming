%{
#include<stdio.h>
#include<string.h>
#undef yywrap
#define yywrap() 1
char ch[8];
%}
char [a-zA-Z]
%%
{char}+ {for(int i=yyleng;i>=0;i--){
					for(int j=0;j<i;j++)
				    	printf("%c",yytext[j]);
				printf("\n");
				}
		}
%%
int main(){
	yylex();
	return 0;
}
