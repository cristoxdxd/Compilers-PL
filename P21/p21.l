%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%%
[+-]?(i|I){1,3}     {printf("ES UN NUMERO ROMANO %s\n", yytext);}
.+                  {printf("NO ES UN NUMERO ROMANO %s\n", yytext);}
%%
int main(int argc, char **argv){
    yylex();
    return 0;
}