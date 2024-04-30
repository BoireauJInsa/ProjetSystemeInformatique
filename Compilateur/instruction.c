#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "instruction.h"

#define SIZE 1000
int currentSize = 0;

typedef struct {
    char* instr_name;
    char* arg1;
    char* arg2;
    char* arg3;
} instr;

instr* Table[SIZE];


void add_instr(char* name, char * arg1, char * arg2, char * arg3) {
    if (currentSize >= SIZE) printf("SIZE EXCEEDED\n");
    Table[currentSize] = malloc(sizeof(instr));
    Table[currentSize] -> instr_name = name;
    Table[currentSize] -> arg1 = arg1;
    Table[currentSize] -> arg2 = arg2;
    Table[currentSize] -> arg3 = arg3;
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
    printf("%d %s %s %s %s", index, Table[index]->instr_name, Table[index]->arg1, Table[index]->arg2, Table[index]->arg3);
}

/*char * ti_to_string(int index) {
	char * string = malloc(100);
	char op_code = get_op_code(i);
	sprintf(string, "%c %s %s %s", op_code, i.arg1, i.arg2, i.arg3);
	return string;
}

char get_op_code(instr i) {
    if (strcmp(i.instr_name, "ADD") == 0) {
        return '0' + 1; 
	}
    else if (strcmp(i.instr_name, "MUL") == 0) {
        return '0' + 2;
    }
    else if (strcmp(i.instr_name, "SUB") == 0) {
        return '0' + 3;
    }
    else if (strcmp(i.instr_name, "DIV") == 0) {
        return '0' + 4;
    }
    else if (strcmp(i.instr_name, "COP") == 0) {
        return '0' + 5;
    }
    else if (strcmp(i.instr_name, "AFC") == 0) {
        return '0' + 6;
    }
    else if (strcmp(i.instr_name, "JMP") == 0) {
        return '0' + 7;
    }
    else if (strcmp(i.instr_name, "JMF") == 0) {
        return '0' + 8;
    }
    else if (strcmp(i.instr_name, "LT") == 0) {
        return '0' + 9;
    }
    else if (strcmp(i.instr_name, "GT") == 0) {
        return '0' + 10;
    }
    else if (strcmp(i.instr_name, "EQ") == 0) {
        return '0' + 11;
    }
    else if (strcmp(i.instr_name, "PRI") == 0) {
        return '0' + 12;
    }
    else if (strcmp(i.instr_name, "AND") == 0) {
        return '0' + 13;
    }
    else if (strcmp(i.instr_name, "OR") == 0) {
        return '0' + 14;
    }
    else if (strcmp(i.instr_name, "NOT") == 0) {
        return '0' + 15;
    }
    else if (strcmp(i.instr_name, "RET") == 0) {
        return '0' + 16;
    }
    else if (strcmp(i.instr_name, "NE") == 0) {
        return '0' + 17;
    }
    else if (strcmp(i.instr_name, "LE") == 0) {
        return '0' + 18;
    }
    else if (strcmp(i.instr_name, "GE") == 0) {
        return '0' + 19;
    }
    else if (strcmp(i.instr_name, "EQU") == 0) {
        return '0' + 20;
    }
    else {
        return '_';
    }
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