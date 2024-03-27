%{
#include <stdio.h>
#include <stdlib.h>
%}

%code provides {
  int yylex (void);
  void yyerror (const char *);
}

%union{int n; char id[16];}
%token<id> tID
%token<n> tNB
%token tMAIN tADD tSUB tMUL tDIV tLT tGT tNE tEQ tGE tLE tAND tOR tNOT tIF tELSE tWHILE tPRINT tRETURN tINT tVOID tASSIGN tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR

%%

code:
    | liste_func main_func liste_func

liste_func:
    %empty
    | func liste_func

func:
    func_type tID tLPAR tVOID tRPAR body        {printf(" _ %s ( void )\n _ ", $2);}
    | func_type tID tLPAR args_func tRPAR body  {printf(" _ %s ( _ )\n _ ", $2);}

func_type:
    tVOID   {printf(" void ");}
    |tINT   {printf(" int ");}

args_func:
    tINT tID  {printf(" int %s ", $2);}
    | tINT tID tCOMMA args_func   {printf(" int %s, ", $2);}

main_func:
    tVOID tMAIN tLPAR tVOID tRPAR body          {printf(" void <MAIN> ( void )\n _ ");}
    | tVOID tMAIN tLPAR args_func tRPAR body    {printf(" void <MAIN> ( _ )\n _ ");}
    
body:
    tLBRACE l_ins tRBRACE {printf(" \n { \n _ \n } \n");}

l_ins:
    %empty  {printf(" fin l_ins ");}
    | ins l_ins
    | return

ins:
    dec
    | ass
    | print
    | if
    | while

dec: 
    tINT l_id tSEMI {printf(" int _;\n");}
    | tINT l_id tASSIGN op tSEMI {printf(" int _ = _;\n");}

l_id:
    tID {printf(" %s fin_l_id ", $1);}
    | tID tCOMMA l_id   {printf(" %s, _ ", $1);}

op:
    val
    | op_add
    | op_sub
    | op_mul
    | op_div

val:
    tID {printf(" %s ", $1);}
    | tNB   {printf(" %d ", $1);}
    | call

call:
    tID tLPAR l_val tRPAR   {printf(" %s ( _ ) ", $1);}
    | tID tLPAR tRPAR   {printf(" %s ( ) ", $1);}

l_val:
    | val
    | val tCOMMA l_val {printf(" _ , _ ");}

op_add:
    val tADD op

op_sub:
    val tSUB op

op_mul:
    val tMUL op

op_div:
    val tDIV op

ass: 
    l_id tASSIGN op tSEMI {printf(" _ = _ ;\n");}

print:
    tPRINT tLPAR op tRPAR tSEMI    {printf(" print ( _ );\n");}
    | tPRINT tLPAR tRPAR tSEMI    {printf(" print ( _ );\n");}

if:
    tIF cond body {printf(" if _ _ \n");} 
    | tIF cond body tELSE body {printf(" if _ _ else _\n");}

while:
    tWHILE cond body    {printf(" while _ _\n");}

cond:
    tLPAR expr_bool tRPAR    {printf(" ( _ ) ");}
    | tLPAR l_cond tRPAR {printf(" ( _ ) ");}

expr_bool:
    val
    | val tSYMBOLBOOL expr_bool
    | val tSYMBOLBOOL cond

l_cond:
    %empty  {printf("fin l_cond");}
    | cond l_cond   {printf(" _ _");}







return:
    tRETURN op tSEMI   {printf(" return _;\n");}



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
