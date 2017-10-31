%{
#include<stdio.h>
#undef yywrap
#define yywrap() 1
void isverb(){
	printf("yes it is a verb");
} 
%}
%%
[is|am|are|was] {isverb();} 
[a-zA-Z] {printf("Not in the verb list.");}
%%
void main(){
yylex();
}