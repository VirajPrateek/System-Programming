%{
#include<stdio.h>
#include<stdlib.h>
#undef yywrap
#define yywrap() 1
int para=0;
void error_exit(char*);
void error_exit(char* err){
	printf("\n%s\tInvalid\n",err);
	exit(0);
}
%}
operator [-|+|*|/]
char [a-z]
digit [0-9]
operands {char}|{digit}
open [(]
close [)]
predef_error {char}{char}|{operator}{operator}|{open}{close}|{open}{operator}|{operator}{close}|{operands}{open}
%%
^{operator} {error_exit("OPR_STRT");}
{open} {para++;}
{close} {para>0?para-- :error_exit("PARA_COUNT");}
{predef_error} {error_exit("PRE_ERR");}
{operator}$ {error_exit("OPR_END");}
%%
int main(){
	yylex();
	para!=0?error_exit("PARA_MAIN"): printf("Correct! (Looks okay)");  
return 0;
}