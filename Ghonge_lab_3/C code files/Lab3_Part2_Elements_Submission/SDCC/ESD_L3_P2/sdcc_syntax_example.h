/* ---------------------------------------------------------------------------------
 * Jane Student
 * ECEN 5613 - Fall 2019 - Prof. McClure
 * University of Colorado Boulder
 * Revised 10/08/19
 *  --------------------------------------------------------------------------------
 * This is where you'd write a description of what this file is meant to do. If it
 * was your main.c file, it would be a description of the Lab/project. If it is a
 * submodule file, it should be a description of what functions it contains.
   ---------------------------------------------------------------------------------*/

// Note: Header guards prevent multiple inclusions and should always be used
#ifndef SDCC_SYNTAX_EXAMPLE_H
#define SDCC_SYNTAX_EXAMPLE_H
/* -------------------------------------------------- */
//          INCLUDES & DEFINES
/* -------------------------------------------------- */
// For a good explanation on what to include in your .c vs .h files, see here:
// https://stackoverflow.com/questions/1804486/should-i-use-include-in-headers


/* -------------------------------------------------- */
//          EXTERN VARIABLES
/* -------------------------------------------------- */
// Extern variables are generally shared between this file and other files (globals)
// Globals are not considered best practice and should be avoided if possible

// Note: Since these variables are defined in _heap.c, you'd have to extern them
//       if you want to access them directly. Heap size might be useful to know,
//       but generally you'd want to avoid directly messing with the heap.
//       Use malloc to get heap space and use it.
extern char __sdcc_heap[];
extern const unsigned int __sdcc_heap_size;

/* -------------------------------------------------- */
//          FUNCTION DECLARATIONS
/* -------------------------------------------------- */

// putchar takes a char and TX's it. Blocking. No return value.
int putchar (int c);

// getchar gets a char from RX. Blocking. Returns char.
void putchar (char c)

// putstr takes a string (char array) and prints till it finds a NULL.
// Returns length of printed string with null char
int putstr (char *s);

#endif // #ifndef SDCC_SYNTAX_EXAMPLE_H
