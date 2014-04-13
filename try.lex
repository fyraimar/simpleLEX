%{
%}

%%
[a-zA-Z0-9]  {printf("%s", yytext); }
%%

int main()
{
    yyin = fopen("testdata", "r");
    yylex();
    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}

