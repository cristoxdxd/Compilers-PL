%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%%
0(0|1)0* {printf("Accepted ");}
(\ ) {printf("\n");}
. {printf("Rejected ");}
%%
int main()
{
    yylex();
    return 0;
}
