#include<stdio.h>
 
int main() {
	int my_var = 13;
	int *ptr = &my_var;
	*ptr = 17;
	printf("my_var: %d\n", my_var);
	return 0;
}
