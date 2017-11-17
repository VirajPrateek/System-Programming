%{
#include "anbn.tab.h"
#undef yywrap
#define yywrap() 1
%}

%%
[aA] {return A;}
[bB] {return B;}
[\n] {return NEW_LINE;}
. {return yytext[0];}
%%