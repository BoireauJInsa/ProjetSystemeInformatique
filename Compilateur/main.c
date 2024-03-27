#include <stdio.h>
#include <string.h>
#include "symbol_table.h"

int main() {
    // Test set and get functions
    pushSymbol(0,"apple",1,12);
    pushSymbol(0,"banana",1,15);
    pushSymbol(1,"orange",12,25);

    printf("Index of 'banana': %d\n", getSymbol("banana")); // Should print 1

    // Test set_tmp function
    char tmp[] = "temporary";
    set_tmp(tmp);

    printf("Index of 'temporary': %d\n", getSymbol(tmp)); // Should print 255

    char tmp2[] = "new_temp";
    set_tmp(tmp2);
    printf("Index of 'temporary': %d\n", getSymbol(tmp2)); // Should print 255

    return 0;
}
