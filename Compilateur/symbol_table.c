#include <stdlib.h>
#include <stdbool.h>
#define TABLE_SIZE 256


typedef struct{
    bool type;
    char* nom;
    int depth;
    int value;
} symbol;

symbol* Table[TABLE_SIZE];

int ESP = 0;
int currentPosition = -1;
int current_depth = 0;

int pushSymbol(bool type, char* name,int depth,int value){

    if(currentPosition < TABLE_SIZE-1){ 

        symbol* symb = malloc(sizeof(symbol));
        symb -> type = type;
        symb -> nom = name;
        symb -> depth = depth;
        symb -> value = value;
        Table[currentPosition++] = symb;
    }
    return currentPosition;

}

void popSymbol(){

    free(Table[currentPosition]);
    currentPosition--;

}

int getSymbol(char* nom, int depth){

    
    for(int i = 0; i < currentPosition; i++){
        if(Table[i]-> depth <= depth){
            if (!strcmp(Table[i]-> nom, nom)) return i;
        }
    }
    return -1;

}

void set_tmp(bool type, char* name,int depth,int value){

    Table[255] = NULL;
    free(Table[255]);
    symbol* symb = malloc(sizeof(symbol));
        symb -> type = type;
        symb -> nom = name;
        symb -> depth = depth;
        symb -> value = value;
    Table[255] = symb;

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
