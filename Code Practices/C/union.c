#include <stdio.h>

typedef union {
	int int_label;
	char char_label;
} package;

int main() {
	package p;
	p.int_label = 12;
	printf("%d\n", p.int_label);
	p.char_label = 'c';
	printf("%c\n", p.char_label);
	printf("%d\n", p.int_label);
	return 0;
}
