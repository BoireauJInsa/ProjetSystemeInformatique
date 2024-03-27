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
    func_type tID tLPAR tVOID tRPAR body        {printf("[func_type] %s ( void )\n [body]", $2);}
    | func_type tID tLPAR args_func tRPAR body  {printf("[func_type] %s ( [args_func] )\n", $2);}

func_type:
    tVOID   {printf(" void ");}
    |tINT   {printf(" int ");}
    
body:
    tLBRACE l_ins tRBRACE {printf(" ([l_ins]) ");}

l_ins:
    %empty  {printf(" fin l_ins ");}
    | ins l_ins
    | return

ins:
    ass
    | dec
    | print
    | op
    | if
    | while

ass: 
    l_id tEQ expr tSEMI {printf("[l_id] = [expr] ;\n");}

l_id:
    tID {printf("%s fin_l_id", $1);}
    | tID tCOMMA l_id   {printf("%s, [l_id]", $1);}

expr:
    tID {printf("%s", $1);}
    | tNB   {printf(" %d", $1);}

dec: 
    tINT l_id tSEMI {printf("int [l_id];\n");}
    | tINT l_id tEQ expr tSEMI  {printf("int [l_id] = [expr];\n");}

cond:
    tLPAR expr_bool tRPAR    {printf("([expr_bool])");}
    | tLPAR l_cond tRPAR {printf("([l_cond])");}

l_cond:
    %empty  {printf("fin l_cond");}
    | cond l_cond   {printf("[cond] [l_cond]");}

expr_bool:
    tID {printf("%s", $1);}
    | tID tSYMBOLBOOL expr_bool {printf("%s [tSYMBOLBOOL] [expr_bool]", $1);}
    | tID tSYMBOLBOOL cond  {printf("%s [tSYMBOLBOOL] [cond]", $1);}

if:
    tIF cond body {printf("if [cond] [body]\n");} 
    | tIF cond body tELSE body {printf("if [cond] [body] else [body]\n");}

while:
    tWHILE cond body    {printf("while [cond] [body]\n");}

print:
    tPRINT tLPAR tID tRPAR tSEMI    {printf("print ( %s );\n", $3);}

return:
    tRETURN tID tSEMI   {printf("return %s;\n", $2);}

op:
    expr tSYMBOLARIT expr tSEMI {printf("[expr] [tSYMBOLARIT] [expr]; \n");}

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
