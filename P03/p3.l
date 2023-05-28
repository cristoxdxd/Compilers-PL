%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    int numlines = 0, numchars = 0, numwords = 0;
%}
%%
[\n] {numlines++;}
. {numchars++;}
[a-zA-Z]+ {numwords++;}
%%
int main(int argc, char *argv[])
{
    yyin = fopen(argv[1], "r");
    yylex();
    printf("Number of lines: %d\n", numlines);
    printf("Number of characters: %d\n", numchars);
    printf("Number of words: %d\n", numwords);
    return 0;
}