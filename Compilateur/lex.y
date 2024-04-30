%{
#include <stdio.h>
#include <stdlib.h>
#include "symbol_table.h"
#include <stdbool.h>
#include <string.h>
  int yylex (void);
  void yyerror (const char *);
%}

%union{int n; char *id;}
%token<id> tID
%token<n> tNB
%token tMAIN tADD tSUB tMUL tDIV tLT tGT tNE tEQ tGE tLE tAND tOR tNOT tIF tELSE tWHILE tPRINT tRETURN tINT tVOID tASSIGN tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR
%type<n> val op  multiplicative additive
%type<id> dec1 ass
%%

code:
    liste_func main_func liste_func

liste_func:
    %empty
    | liste_func func

func:
    func_type tID tLPAR tVOID tRPAR body        
    | func_type tID tLPAR args_func tRPAR body  

func_type:
    tVOID   
    |tINT  

args_func:
    tINT tID 
    | tINT tID tCOMMA args_func   

main_func:
    tVOID tMAIN tLPAR tVOID tRPAR body          
    | tVOID tMAIN tLPAR args_func tRPAR body   
body:
    tLBRACE l_ins tRBRACE

l_ins:
    %empty  
    | ins l_ins
    | return

ins:
    dec
    | ass
    | print
    | if
    | while

dec: 
    tINT dec1 decn tSEMI

dec1:
    tID {printf("AFC @%d %s\n",pushSymbol(1,$1,1,0),$1);}
    | tID tASSIGN tNB {printf("AFC @%d %s\n",pushSymbol(1,$1,1,$3),$1);}

decn: tCOMMA dec1 decn
    |%empty
 

op:
    additive {$$ = $1;}
    

val:
    tID {$$ = getSymbol($1,1);}
    | tNB   {
                printf("AFC @%d @%d\n",255,$1);
                set_tmp(1,"tmp",1,$1);
                $$ = 255;
                }

multiplicative:
    val
    |multiplicative tMUL val {printf("MUL @%d @%d @%d \n",255,$1,$3); $$ = 255;}
    |multiplicative tDIV val {printf("DIV @%d @%d @%d \n",255,$1,$3); $$ = 255;}

additive:
    multiplicative
    |additive tADD multiplicative {printf("ADD @%d @%d @%d \n",255,$1,$3); $$ = 255;}
    |additive tSUB multiplicative {printf("SUB @%d @%d @%d \n",255,$1,$3); $$ = 255;}

ass: 
    tID tASSIGN op tSEMI {printf("AFC @%d %d\n",getSymbol($1,1),$3);}

print:
    tPRINT tLPAR op tRPAR tSEMI    
    | tPRINT tLPAR tRPAR tSEMI   

if:
    tIF cond body 
    | tIF cond body tELSE body 

while:
    tWHILE cond body   

cond:
    tLPAR expr_bool tRPAR   
    | tLPAR l_cond tRPAR

expr_bool:
    val
    | val tSYMBOLBOOL expr_bool
    | val tSYMBOLBOOL cond

l_cond:
    %empty 
    | cond l_cond  

return:
    tRETURN op tSEMI  

tSYMBOLBOOL:
    tLT   {printf(" < ");}
    | tGT   {printf(" > ");}
    | tNE   {printf(" != ");}
    | tEQ   {printf(" == ");}
    | tGE   {printf(" >= ");}
    | tLE   {printf(" <= ");}
    | tAND  {printf(" && ");}
    | tOR   {printf(" || ");}
    | tNOT  {printf(" ! ");}
%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

int main(void) {
  yyparse();
}
