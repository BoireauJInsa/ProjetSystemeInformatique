#include <stdio.h>
#include <string.h>
#include "symbol_table.h"

int main() {
    // Test set and get functions
    set("apple");
    set("banana");
    set("orange");

    printf("Index of 'banana': %d\n", get("banana")); // Should print 1

    // Test set_tmp function
    char tmp[] = "temporary";
    set_tmp(tmp);

    printf("Index of 'temporary': %d\n", get(tmp)); // Should print 255

    char tmp2[] = "new_temp";
    set_tmp(tmp2);
    printf("Index of 'temporary': %d\n", get(tmp2)); // Should print 255

    return 0;
}
