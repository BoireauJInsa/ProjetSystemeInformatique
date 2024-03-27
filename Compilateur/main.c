#include <stdio.h>
#include <string.h>
#include "symbol_table.h"

int main() {
    // Test set and get functions
    pushSymbol(0,"apple",1,12);
    pushSymbol(0,"banana",1,15);
    pushSymbol(1,"orange",12,25);

    printf("Index of 'banana': %d\n", getSymbol("banana",1)); // Should print 1

    // Test set_tmp function
    
    set_tmp(0,"tmp",1,12);

    printf("Index of 'temporary': %d\n", get_tmp("tmp",1)); // Should print 255

    
    set_tmp(1,"tmp2",12,25);
    printf("Index of 'temporary': %d\n", get_tmp("tmp2",12)); // Should print 255

    return 0;
}
