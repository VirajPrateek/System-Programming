<<<<<<< HEAD
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
=======
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
[a-zA-Z]+ {printf("Not in the verb list.");}
%%
void main(){
yylex();
}
>>>>>>> 202ed33e7af8dffbdeeee78993ba2c70b5ec4228
