%{
#include<stdio.h>
void isverb(){
	printf("yes it is a verb");
} 
%}
%option noyywrap
%%
[is|am|are|was]+ {isverb();} 
[a-zA-Z]+ {printf("Not in the verb list.");}
%%
void main(){
yylex();
}