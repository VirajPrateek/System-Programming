%{
#include<stdio.h>
#undef yywrap
#define yywrap() 1
char str[10];
int i=0;
%}
%%
[a-wA-W] {str[i]=(int)str[i]+3;i++;}
[x-zX-Z] {str[i]=(int)str[i]-23; i++;}
%%
int main(){
void enigma();
printf("\nEnter a string: ");
scanf("%s",str);
yy_scan_string(str);
yylex();
printf("Caesar Ciphered String: %s",str);
return 0;	
}