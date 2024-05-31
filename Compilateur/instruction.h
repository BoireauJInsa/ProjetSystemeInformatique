#ifndef INSTRUCTION
#define INSTRUCTION
/**
 * Add an instruction to the table
*/
int add_instr(char* nom, char* arg1, char* arg2, char* arg3);

/**
 * Get the size of (number of instructions in) the table
*/
int get_ti_size();

/**
 * Display the instruction table
*/
void print_ti();

/**
 * Display an instruction
*/
void print_instr(int index);

char * to_string(int num);

int patch(int index, int to);

void write_in_file();

#endif