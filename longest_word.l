%{
#include<iostream>
#undef yywrap
#define yywrap() 1
using namespace std;
int length=0;
int temp=0;
char a[16];
%}
letter [a-zA-Z]
not_a_letter .|[\n]
%%
{letter} {temp++;
			if(temp>length){
				length=temp;
 				for(int i=length;i>0;i--)
 					a[i]=yytext[i-length];}
				}
{not_a_letter} {temp=0;}
%%
int main(){
	yyin=fopen("text.txt","r");
	yylex();
	cout<<"\nLongest word is: ";
	for(int i=0;i<13;i++) cout<<a[i];
	cout<<"\nLength: "<<length;	
	return 0;	 	
}