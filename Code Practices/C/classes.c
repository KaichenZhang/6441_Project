#include<iostream.h>
#include<conio.h>

class x1 {
	int a = 3;
	int b = 5;
}

int main {
	x1 obj;
	x1 *ptr;
	ptr = &obj;
	printf("%d", *(int)ptr);
	return 0;
}
