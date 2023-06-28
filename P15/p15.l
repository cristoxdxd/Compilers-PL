%%

{DIGITO}+   { printf( "Un entero: %s (%d)\n", yytext, atoi( yytext ) ); }
{DIGITO}+"."{DIGITO}*   { printf( "Un real: %s (%g)\n", yytext, atof( yytext ) ); }
if|then|begin|end|procedure|function   { printf( "Una palabra clave: %s\n", yytext ); }
{ID}  { printf( "Un identificador: %s\n", yytext ); }
"+"|"-"|"*"|"/"   { printf( "Un operador: %s\n", yytext ); }
"{"[^}\n]*"}"   /* se come una linea de comentario */
[ \t\n]+   /* se come espacios, tabuladores y saltos de linea */
.   { printf( "Un caracter de error: %s\n", yytext ); }
%%

main( argc, argv )
int argc;
char **argv;
{
    ++argv, --argc;  /* skip over program name */
    if ( argc > 0 )
        yyin = fopen( argv[0], "r" );
    else
        yyin = stdin;

    yylex();
}