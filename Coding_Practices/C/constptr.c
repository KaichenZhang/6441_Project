#include <stdio.h>

int main() {
	int a = 3;
	int const b = 5;
	int c = 7;

	int * const ptr1 = &a; /* a constant pointer of integer type*/
	int const * ptr2 = &b; /* a pointer of constant integer type */
	int const * const ptr3 = &b; /* a constant pointer of constant integer type */

	printf("Pointers: ptr1: %d, ptr2: %d, ptr3: %d.\n", *ptr1, *ptr2, *ptr3);
	

	/*
	Pointers: ptr1: 3, ptr2: 5, ptr3: 5.
	ptr1 = &c;	error: Assignment to const identifier 'ptr1'.
	*ptr2 = 7;	error: Assignment to const location.
	ptr2 = &a;	ok
	*ptr2 = 11;	error #2033: Assignment to const location.
	ptr3 = &a;	error: Assignment to const identifier 'ptr3'.
	*ptr3 = 9;	error: Assignment to const location.
	*/

	return 0;
}
