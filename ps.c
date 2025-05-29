// File: ps.c	Name:Sagi Menahem	ID:208645937
#include "types.h"
#include "stat.h"
#include "user.h"

int main(int argc, char *argv[]) {
    cps137();	// Calls the custom system call `cps137` to display the process table.
    exit(0);	// Exits the program with status 0.
}
