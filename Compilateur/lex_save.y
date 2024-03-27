%{
#include <stdio.h>
#include <stdlib.h>
#include "symbol_table.h"
#include <stdbool.h>
#include <string.h>

int yylex (void);
void yyerror (const char *);
%}


%union{int n; char id[16];}
%token<id> tID
%token<n> tNB 
%token tMAIN tADD tSUB tMUL tDIV tLT tGT tNE tEQ tGE tLE tAND tOR tNOT tIF tELSE tWHILE tPRINT tRETURN tINT tVOID tASSIGN tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR
%type<n> val op  
%type<id> l_id
%%

code:
    l_func main l_func


l_func:
    %empty
    | l_func func 

func:
    func_type tID tLPAR tVOID tRPAR body        
    | func_type tID tLPAR args_func tRPAR body  

func_type:
    tVOID   
    |tINT  

args_func:
    tINT tID  
    | tINT tID tCOMMA args_func  

main:
    tVOID tMAIN tLPAR tVOID tRPAR body          
    | tVOID tMAIN tLPAR args_func tRPAR body    
    
body:
    tLBRACE l_ins tRBRACE 

l_ins:
    %empty  
    | ins l_ins
    | return

ins:
    ass
    | dec
    | print
    | if
    | while

ass: 
    l_id tASSIGN op tSEMI {printf("AFC @%d %d\n",getSymbol($1,1),$3);}

l_id:
    tID {strcpy($1,$$);}
    | tID tCOMMA l_id   {printf("__");}

l_val:
    %empty  
    | val
    | l_val tCOMMA val 


val:
    tID {$$ = getSymbol($1,1);}
    | tNB   {
                printf("AFC @%d %d\n",255,$1);
                set_tmp(1,"tmp",1,$1);
                $$ = 255;
                }
    | call

call:
    tID tLPAR l_val tRPAR   

dec: 
    tINT l_id tSEMI {printf("AFC @%s @%d\n",$2,(pushSymbol(1,$2,1,0)));}
    | tINT l_id tASSIGN op tSEMI
cond:
    tLPAR expr_bool tRPAR   
    | tLPAR l_cond tRPAR 

l_cond:
    %empty  
    | cond l_cond 

expr_bool:
    val
    | val tSYMBOLBOOL expr_bool
    | val tSYMBOLBOOL cond

if:
    tIF cond body
    | tIF cond body tELSE body

while:
    tWHILE cond body    
print:
    tPRINT tLPAR op tRPAR tSEMI  

return:
    tRETURN op tSEMI  

op:
    val {$$ = $1;}
    | val tADD op {printf("ADD @%d @%d @%d \n",255,$1,$3); $$ = 255;}
    | val tSUB op
    | val tMUL op
    | val tDIV op


tSYMBOLBOOL:
    tADD    {printf(" + ");}
    | tSUB  {printf(" - ");}
    | tMUL  {printf(" * ");}
    | tDIV  {printf(" / ");}
    | tLT   {printf(" < ");}
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
