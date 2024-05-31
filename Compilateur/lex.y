%{
#include <stdio.h>
#include <stdlib.h>
#include "symbol_table.h"
#include <stdbool.h>
#include "instruction.h"
#include <string.h>
  int yylex (void);
  void yyerror (const char *);
%}

%union{int n; char *id;}
%token<id> tID 
%token<n> tNB tIF
%token tMAIN tADD tSUB tMUL tDIV tLT tGT tNE tEQ tGE tLE tAND tOR tNOT tELSE tWHILE tPRINT tRETURN tINT tVOID tASSIGN tLBRACE tRBRACE tLPAR tRPAR tSEMI tCOMMA tERROR
%type<n> val op  multiplicative additive cond 
%type<id> dec1 ass expr_bool
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
    tLBRACE tRBRACE
    | tLBRACE l_ins tRBRACE

l_ins: 
    ins
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
    tID {pushSymbol(1,$1,1,0);}
    | tID tASSIGN tNB {
        pushSymbol(1,$1,1,$3);
        add_instr("AFC","255",to_string($3),"");
        add_instr("COP",to_string(getSymbol($1,1)),"255","");}

decn: tCOMMA dec1 decn
    |%empty
 

op:
    additive {$$ = $1;}
    

val:
    tID {$$ = getSymbol($1,1);}
    | tNB   {
                add_instr("AFC","255",to_string($1),"");
                set_tmp(1,"tmp",1,$1);
                $$ = 255;
                }

multiplicative:
    val
    |multiplicative tMUL val {add_instr("MUL","255",to_string($1),to_string($3)); $$ = 255;}
    |multiplicative tDIV val {add_instr("DIV","255",to_string($1),to_string($3));$$ = 255;}

additive:
    multiplicative
    |additive tADD multiplicative {add_instr("ADD","255",to_string($1),to_string($3)); $$ = 255;}
    |additive tSUB multiplicative {add_instr("SUB","255",to_string($1),to_string($3)); $$ = 255;}

ass: 
    tID tASSIGN op tSEMI {add_instr("COP",to_string(getSymbol($1,1)),to_string($3),"");}

print:
    tPRINT tLPAR op tRPAR tSEMI    
    | tPRINT tLPAR tRPAR tSEMI   

if:
    tIF cond body {int current = get_ti_size(); patch($2, current);} 
    
    | tIF cond body {int current = get_ti_size();
            patch($2, current+1);
            int ligne = add_instr("JMP","","","");
            $1 = ligne;
            } tELSE body {  int current = get_ti_size();
                patch($1, current);}
               
while:
    tWHILE cond body {int current = get_ti_size(); patch($2, current);}  

cond:
    tLPAR expr_bool tRPAR {int ligne = add_instr("JMPF","255",$2,""); $$ = ligne;}  
    

expr_bool:
    val {add_instr("COP","255",to_string($1),"");}     
    | val tLT  val {add_instr("LT",  to_string($1), to_string($3), "255");}
    | val tGT  val {add_instr("GT",  to_string($1), to_string($3), "255");}
    | val tNE  val {add_instr("NE",  to_string($1), to_string($3), "255");}
    | val tEQ  val {add_instr("EQ",  to_string($1), to_string($3), "255");}
    | val tGE  val {add_instr("GE",  to_string($1), to_string($3), "255");}
    | val tLE  val {add_instr("LE",  to_string($1), to_string($3), "255");}
    | val tAND val {add_instr("AND", to_string($1), to_string($3), "255");}
    | val tOR  val {add_instr("OR",  to_string($1), to_string($3), "255");}
    | val tNOT val {add_instr("NOT", to_string($1), to_string($3), "255");}

return:
    tRETURN op tSEMI  
%%

void yyerror(const char *msg) {
  fprintf(stderr, "error: %s\n", msg);
  exit(1);
}

int main(void) {
  yyparse();
  print_ti();
  write_in_file();
}
