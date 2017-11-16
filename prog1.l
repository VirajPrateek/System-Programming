%{
	#include<stdio.h>
	#undef yywrap
	#define yywrap() 1
	int c=0,v=0;
%}
%%
[aeiou] {v++;}
[A-Z a-z] {c++;}
%%
void main(){
 printf("Enter string: ");
 yylex();
 printf("The no of vowels: %d and consonants: %d",v,c);
}
