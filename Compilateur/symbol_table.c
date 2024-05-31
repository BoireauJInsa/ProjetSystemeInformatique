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

// push the symbol in our table
int pushSymbol(bool type, char* name,int depth,int value){

    if(currentPosition < TABLE_SIZE-1){ 

        Table[currentPosition] = malloc(sizeof(symbol));
        Table[currentPosition] -> type = type;
        Table[currentPosition] -> nom = name;
        Table[currentPosition] -> depth = currentPosition;
        Table[currentPosition] -> value = value;
        currentPosition++;
        
    }
    return currentPosition-1;

}


void popSymbol(){

    free(Table[currentPosition]);
    currentPosition--;

}

//get the index of the symbol needed
int getSymbol(char *n, int depth){
    int out = 0;
    while (out < currentPosition && strcmp(Table[out]->nom, n) != 0) out++;
    if (out == currentPosition) out = -1;
    return out;

}

//returns the value of the temporary variable
int get_tmp(){

    if(Table[TABLE_SIZE-1] != NULL){
        return (TABLE_SIZE-1);
    }
    return -1;

}

//set the value of the temporary variable
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

