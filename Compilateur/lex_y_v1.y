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
%token tADD tSUB tMUL tDIV tLT tGT tNE tEQ tGE tLE tAND tOR tNOT tIF tELSE tWHILE tPRINT tRETURN tINT tVOID tASSIGN tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR

%%

l_code:
    code
    | l_code code

code:
    func

args_func:
    tINT tID  {printf(" int %s ", $2);}
    | tINT tID tCOMMA args_func   {printf(" int %s, ", $2);}


func:
    func_type tID tLPAR tVOID tRPAR body        {printf(" _ %s ( void )\n _ ", $2);}
    | func_type tID tLPAR args_func tRPAR body  {printf(" _ %s ( _ )\n _ ", $2);}

func_type:
    tVOID   {printf(" void ");}
    |tINT   {printf(" int ");}
    
body:
    tLBRACE l_ins tRBRACE {printf(" { _ } ");}

l_ins:
    %empty  {printf(" fin l_ins ");}
    | ins l_ins
    | return

ins:
    ass
    | dec
    | print
    | op tSEMI {printf(";\n");}
    | if
    | while

ass: 
    l_id tASSIGN op tSEMI {printf(" _ = _ ;\n");}

l_id:
    tID {printf(" %s fin_l_id ", $1);}
    | tID tCOMMA l_id   {printf(" %s, _ ", $1);}

val:
    tID {printf(" %s ", $1);}
    | tNB   {printf(" %d ", $1);}

dec: 
    tINT l_id tSEMI {printf(" int _;\n");}
    | tINT l_id tASSIGN op tSEMI {printf(" int _ = _;\n");}

cond:
    tLPAR expr_bool tRPAR    {printf(" ( _ ) ");}
    | tLPAR l_cond tRPAR {printf(" ( _ ) ");}

l_cond:
    %empty  {printf("fin l_cond");}
    | cond l_cond   {printf(" _ _");}

expr_bool:
    val
    | val tSYMBOLBOOL expr_bool
    | val tSYMBOLBOOL cond

if:
    tIF cond body {printf(" if _ _ \n");} 
    | tIF cond body tELSE body {printf(" if _ _ else _\n");}

while:
    tWHILE cond body    {printf(" while _ _\n");}

print:
    tPRINT tLPAR op tRPAR tSEMI    {printf(" print ( _ );\n");}

return:
    tRETURN op tSEMI   {printf(" return _;\n");}

op:
    val tSYMBOLARIT op
    | val

tSYMBOLARIT:
    tADD    {printf(" + ");}
    | tSUB  {printf(" - ");}
    | tMUL  {printf(" * ");}
    | tDIV  {printf(" / ");}

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
