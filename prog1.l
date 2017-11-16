<<<<<<< HEAD
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
=======
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
>>>>>>> 202ed33e7af8dffbdeeee78993ba2c70b5ec4228
