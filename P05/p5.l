%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%%
0(0|1)0* {printf("Accepted 1 ");}
0(0│1)*0 {printf("Accepted 2 ");}
(0│1)*0(0|1)(0|1) {printf("Accepted 3 ");}
0*10*10*10* {printf("Accepted 4 ");}
(00│11)*((01│10)(00│11)*(01│10)(00│11)*)* {printf("Accepted 5 ");}
(\ ) {printf("\n");}
%%
int main()
{
    yylex();
    return 0;
}
