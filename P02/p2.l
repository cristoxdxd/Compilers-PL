/* Statements */
%{
    #include <stdio.h> // necessary library for "printf" function used below 
%}
/* Rules Section */
%%
pare printf("\tcommand 'pare' receiver\t");
inicio printf("\tcommand 'inicio' executed\t");
%%
/* Main Program */
int main() {
    yylex();
    return 0;
}
