%{
#include<stdio.h>
#include<stdlib.h>

extern int yylex();
void yyerror(char *errmsg);
%}

%token A B NEW_LINE

%%
S : A A A A A A A A A A E B NEW_LINE {printf("VALID STRING");}
  ;
E : E A
  | 
  ;
%%
void yyerror(char *errmsg){
	fprintf(stderr,"INVALID STRING\t%s\n",errmsg);
	exit(1);
}
int main(){
	printf("\nEnter a string: ");
	yyparse();
	return 0;
}