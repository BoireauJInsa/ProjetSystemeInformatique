#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <stdio.h>
#define TABLE_SIZE 256


typedef struct{
    bool type;
    char* nom;
    int depth;
    int value;
} symbol;

symbol* Table[TABLE_SIZE];

int ESP = 0;
int currentPosition = 0;
int current_depth = 0;

int pushSymbol(bool type, char* name,int depth,int value){

    if(currentPosition < TABLE_SIZE-1){ 

        Table[currentPosition] = malloc(sizeof(symbol));
        Table[currentPosition] -> type = type;
        Table[currentPosition] -> nom = name;
        Table[currentPosition] -> depth = currentPosition;
        Table[currentPosition] -> value = value;
        printf("PUSH %s %d",Table[currentPosition]->nom, currentPosition);
        currentPosition++;
        
    }
    printf("TAB0: %d, %s    ",Table[0]->depth ,Table[0]->nom);
    return currentPosition-1;

}

void popSymbol(){

    free(Table[currentPosition]);
    currentPosition--;

}

int getSymbol(char *n, int depth){
   /* int index = 0;
    while(index < currentPosition){
        printf("(%d, %s,%s,%d) ,",Table[index]->depth ,Table[index]->nom, n,(strcmp(Table[index]-> nom, n)));
        if(Table[index]-> depth <= 1000){
            if (strcmp(Table[index]-> nom, n) == 0) return index;
        }
        index++;
    }*/
    int out = 0;
    while (out < currentPosition && strcmp(Table[out]->nom, n) != 0) out++;
    return out;

}

int get_tmp(){


    if(Table[TABLE_SIZE-1] != NULL){
        return (TABLE_SIZE-1);
    }
    return -1;

}

void set_tmp(bool type, char* name,int depth,int value){

    Table[TABLE_SIZE-1] = NULL;
    free(Table[TABLE_SIZE-1]);
    Table[TABLE_SIZE-1]  = malloc(sizeof(symbol));
        Table[TABLE_SIZE-1] -> type = type;
        Table[TABLE_SIZE-1]  -> nom = name;
        Table[TABLE_SIZE-1]  -> depth = depth;
        Table[TABLE_SIZE-1]  -> value = value;

}

void add_depth(){
    current_depth++;
}

void del_depth(){
    current_depth--;
    while(Table[currentPosition]->depth > current_depth){
        free(Table[currentPosition]);
        Table[currentPosition] = NULL;
        currentPosition--;
    }
}

