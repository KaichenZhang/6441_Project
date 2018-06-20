#include<stdio.h>

int main() {
	int a = 7;
	int *ptr;
	ptr = &a;
	printf("a: %d\n", a);
	printf("a: %d\n", *ptr);
	a = 9;
	printf("a: %d\n", a);
	printf("a: %d\n", *ptr);
	*ptr = 11;
	printf("a: %d\n", a);
	printf("a: %d\n", *ptr);
	return 0;
}
