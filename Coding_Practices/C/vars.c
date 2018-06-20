#include<stdio.h>
 
int a = 3;

int func() {
	int a = 5;
	return a;
}

int main() {
	printf("From main: %d\n", a);
	printf("From func: %d\n", func());
	printf("From main: %d\n", a);
  return 0;
}


