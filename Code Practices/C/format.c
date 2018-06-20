#include<stdio.h>

main() {
	int a, b;
	float c, d;

	a = 7;
	b = a / 2;
	c = 10.5;
	d = c / 2;

	printf("%d\n", b);
	printf("%3d\n", b);
	printf("%3.2f\n", c);
	printf("%3.3f\n",d);
	
	return 0;
}
