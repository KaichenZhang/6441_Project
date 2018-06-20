#include <stdio.h>

int main() {
	int intvar;
	float floatvar = 3.14;
	float floatvar2;

  intvar = floatvar;
	floatvar2 = intvar;

	printf("%d : %.2f : %1.3f\n", intvar, floatvar, floatvar2); 
	
	return 0;
}
