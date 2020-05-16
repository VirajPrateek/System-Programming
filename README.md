# System-Programming
The lex and yacc Codes

Hey!
These programs have been compiled on Windows7 - GNU Win32 if you're curious.

So, there are some things a linux user should consider while executing on Windows envt.

1. To compile and run lex
		lex filename.l
		gcc lex.yy.c -o objectFileName
		objectFileName (to run)

2. For yacc
		yacc -d fileName.y   (generates 'fileName.tab.h' not 'yy.tab.h')
		lex fileName.l
		gcc lex.yy.c fileName.yy.c -o objectFilename
		objectFileName    	 (to run)

Further please note that there are some extra code for eliminating the yywrap function.
which may include any of the following-
		a.	#undef yywrap
			#define yywrap() 1

		b.	%option noyywrap

		c.  int yywrap(){return -1;}

Thanks?

/*YOUR GRATITUDE IS IMPLIED*/
With love,
from- 
Kumar Prateek Viraj
