%{
    int num_el,num_ella;
%}
%%
el      num_el++;
ella    num_ella++;
\n      |
.       ;
%%
int main(){
    yylex();
    printf( "Numero de el independientes %d\n",
            "Numero de el en ellas %d\n",
            num_el, num_ella);
    return 0;
}