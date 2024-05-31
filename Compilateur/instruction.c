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


int add_instr(char* name, char * arg1, char * arg2, char * arg3) {
    if (currentSize > SIZE) printf("SIZE EXCEEDED\n");
    TableInstr[currentSize] = malloc(sizeof(instr));
    TableInstr[currentSize] -> instr_name = name;
    TableInstr[currentSize] -> arg1 = arg1;
    TableInstr[currentSize] -> arg2 = arg2;
    TableInstr[currentSize] -> arg3 = arg3;
    currentSize++;

    return currentSize-1;
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
    printf("%d %s %s %s %s", index+1, TableInstr[index]->instr_name, TableInstr[index]->arg1, TableInstr[index]->arg2, TableInstr[index]->arg3);
}

char * to_string(int num){
    char * str = malloc(sizeof(num)) ;
    sprintf(str, "%d", num);
    return str;
}


int patch(int index, int to) {
    TableInstr[index]-> arg2 = to_string(to);
}


void write_in_file() {
	FILE * fPtr;
	fPtr = fopen("asm.txt", "w");
	if(fPtr == NULL) {
        	printf("Unable to create file.\n");
        	exit(EXIT_FAILURE);
    	}
	int i;
	for (i=0; i<currentSize; i++) {
		fprintf(fPtr,"%d %s %s %s %s \n", i+1, TableInstr[i]->instr_name, TableInstr[i]->arg1, TableInstr[i]->arg2, TableInstr[i]->arg3);
	}
    fclose(fPtr);
}
