#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "instruction.h"

#define SIZE 256
int currentSize = 0;

typedef struct {
    char* instr_name;
    char* arg1;
    char* arg2;
    char* arg3;
} instr;

instr* TableInstr[SIZE];


void add_instr(char* name, char * arg1, char * arg2, char * arg3) {
    if (currentSize >= SIZE) printf("SIZE EXCEEDED\n");
    TableInstr[currentSize] = malloc(sizeof(instr));
    TableInstr[currentSize] -> instr_name = name;
    TableInstr[currentSize] -> arg1 = arg1;
    TableInstr[currentSize] -> arg2 = arg2;
    TableInstr[currentSize] -> arg3 = arg3;
    currentSize++;
}

int get_ti_size() {
    return currentSize;
}

void print_ti() {
    int i;
    for (i = 0; i < currentSize; i++) {
        print_instr(i);
        printf("\n");
    }
}

void print_instr(int index) {
    printf("%d %s %s %s %s", index, TableInstr[index]->instr_name, TableInstr[index]->arg1, TableInstr[index]->arg2, TableInstr[index]->arg3);
}

char * to_string(int num){
    char * str = malloc(sizeof(num)) ;
    sprintf(str, "%d", num);
    return str;
}
/*char * ti_to_string(int index) {
	char * string = malloc(100);
	char op_code = get_op_code(i);
	sprintf(string, "%c %s %s %s", op_code, i.arg1, i.arg2, i.arg3);
	return string;
}

char get_op_code(int index) {
         if (strcmp(Table[index] -> instr_name, "ADD") == 0) return "01";
    else if (strcmp(Table[index] -> instr_name, "MUL") == 0) return "02";
    else if (strcmp(Table[index] -> instr_name, "SUB") == 0) return "03";
    else if (strcmp(Table[index] -> instr_name, "DIV") == 0) return "04";
    //else if (strcmp(Table[index] -> instr_name, "COP") == 0) return "05";
    else if (strcmp(Table[index] -> instr_name, "AFC") == 0) return "06";
    else if (strcmp(Table[index] -> instr_name, "JMP") == 0) return "07";
    else if (strcmp(Table[index] -> instr_name, "JMF") == 0) return "08";
    else if (strcmp(Table[index] -> instr_name, "LT" ) == 0) return "09";
    else if (strcmp(Table[index] -> instr_name, "GT" ) == 0) return "10";
    else if (strcmp(Table[index] -> instr_name, "EQ" ) == 0) return "11";
    else if (strcmp(Table[index] -> instr_name, "PRI") == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "AND") == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "OR" ) == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "NOT") == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "RET") == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "NE" ) == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "LE" ) == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "GE" ) == 0) return ;
    else if (strcmp(Table[index] -> instr_name, "EQU") == 0) return;
    else return '_';
}

void write_in_file(instr * ti) {
	FILE * fPtr;
	fPtr = fopen("asm.txt", "w");
	if(fPtr == NULL) {
        	printf("Unable to create file.\n");
        	exit(EXIT_FAILURE);
    	}
	int i;
	for (i=0; i<ti_size; i++) {
		fputs(ti_to_string(ti[i]), fPtr);
		fputs("\n", fPtr);
	}
}*/
