%{
    #include <stdlib.h>
%}
%%
[0-9]+  { printf("NUMBER %s", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("IDENTIFIER %s", yytext); }
[0-9]+\.[0-9]+[eE][+-]?[0-9]+   { printf("NUMBER exponential notation %s", yytext); }
%%
int main(int argc, char **argv)
{
    yylex();
    return 0;
}
