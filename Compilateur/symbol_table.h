#ifndef SYMBOL_TABLE
#define SYMBOL_TABLE
#include <stdbool.h>
#include <string.h>

int pushSymbol(bool type, char* name,int depth,int value);

void popSymbol();

int getSymbol(char* nom, int depth);

void set_tmp(bool type, char* name,int depth,int value);

int get_tmp();

#endif