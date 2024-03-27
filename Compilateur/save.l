%{
// Thibault GAUTHERON et Jérémy BOIREAU
#include "lex.tab.h";
%}

%option noyywrap
%option noinput
%option nounput

%%

"if" {return tIF;}
"else" {return tELSE;}
"while" {return tWHILE;}
"print" {return tPRINT;}
"return" {return tRETURN;}
"int" {return tINT;}
"void" {return tVOID;}

"+" {return "tADD;}
"-" {return tSUB;}
"*" {return tMUL;}
"/" {return tDIV;}
"<" {return tLT;}
">" {return tGT;}
"!=" {return tNE;}
"==" {return tEQ;}
">=" {return tGE;}
"<=" {return tLE;}
"=" {return tASSIGN;}
"&&" {return tAND;}
"||" {return tOR;}
"!" {return tNOT;}
"{" {return tLBRACE;}
"}" {return tRBRACE;}
"(" {return tLPAR;}
")" {return tRPAR;}
";" {return tSEMI;}
"," {return tCOMMA;}

[a-zA-Z][a-zA-Z0-9]* {strcpy(yylval.id,yytext); return tID;}

[0-9]+ {printf(yylval.n = atoi(yytext); return tNB;);}
0x[0-9a-fA-F]+ {printf(yylval.n = stroul(yytext,NULL;16); return tNB;);}

[ \t\n]+ 
"//".* 
"/*"([^*]*|(\*+[^/]))*"*/" 
. {return tERROR;}

%%

int main(int argc, char* argv[]){
    yyin = fopen(argv[1],"r");
    yylex();
} 


