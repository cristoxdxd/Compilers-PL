%{
/*
1. Solicitar la entrada de un numero par e impar
2. Identificar caracteristica de entrada: par / impar
3. vertftcar la correccton de Ia entrada y el resultado de ta tmpreston
*/
#include <stdio.h>
#include <stdlib.h>
*/
int number_1;
int number_2;
%}
number_sequence [0-9]*
%%
{number_sequence}[0|2|4|6|8] {printf("Numero par [%d]", yyleng); return atoi(yytext);}
{number_sequence}[1|3|5|7|9] {printf("Numero impar [%d]", yyleng); return atoi(yytext);}
%%
int yywrap(){
    return 1;
}
int main(){
    printf("\nIngrese un numero par y un numero impar\n");
    number_1 = yylex();
    number_2 = yylex();
    int diff = number_1 - number_2;
    if(diff%2!=0)
        printf("\nSe verifican sus entradas para la correccion, \nResultado: CORRECTO\n");
    else
        printf("\nSe verifican sus entradas para la correccion, \nResultado: INCORRECTO\n");
    return 1;
}