<<<<<<< HEAD
%{
 #include<iostream>
 #undef yywrap
 #define yywrap() 1
 using namespace std;
 	int lines=0,chars=0;
%}
%%
[\n] {lines++;}
. {chars++;}
%%
int main(){
	yyin=fopen("text.txt","r");
	yylex();
	cout<<"Characters: "<<chars;
	cout<<"\nLines: "<<lines;
	return 0;
=======
%{
 #include<iostream>
 #undef yywrap
 #define yywrap() 1
 using namespace std;
 	int lines=0,chars=0;
%}
%%
[\n] {lines++;}
. {chars++;}
%%
int main(){
	yyin=fopen("text.txt","r");
	yylex();
	cout<<"Characters: "<<chars;
	cout<<"\nLines: "<<lines;
	return 0;
>>>>>>> 202ed33e7af8dffbdeeee78993ba2c70b5ec4228
}