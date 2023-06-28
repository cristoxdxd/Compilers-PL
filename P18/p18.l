/*Programa que permite reconocer numeros reales en notacion exponenctal*/
/*y con stmbolos de agrupacion */
%{
    #include <stdio.h>
    #include <stdlib.h>
%}

ABRIR ("["|"{"|"("|"<")
DIGITO ("+"|"-"){0,1}[0-9]+("."[0-9]+){0,1}([E,e](\]"+"|"-"){0,1}[0-9]+){0,1}
CERRAR ("]"|"}"|")"|">")

%%
{ABRIR}{DIGITO},{DIGITO}{CERRAR}    { printf("SECUENCIA VÁLIDA %s \n", yytext); }
.+                                  { printf("SECUENCIA NO VÁLIDA %s \n", yytext); }

%%

int main(){
    yylex();
    return 0;
}