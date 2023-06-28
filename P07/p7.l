%{
    #include <stdio.h>
    int ContadorTokens = 0;
%}
%%
[a-zA-Z]+               { printf( PALABRA ++ContadorTokens, yytext); }
[0123456789]+           { printf( NUMERO ++ContadorTokens, yytext); }
[a-zA-Z][a-zA-Z0-9]*    { printf( IDENTIFICADOR ++ContadorTokens, yytext); }
%%
int main(){
    yylex();
    return 0;
}