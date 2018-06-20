#include <stdio.h>

int f2c (int fahrenheit);

int main (void) {
	int fahrenheit;
	printf("Enter the temperature in degrees fahrenheit: ");
	scanf("%d", &fahrenheit);
	printf ("The corresponding temperature in celsius is %d\n", f2c(fahrenheit));
	return 0;
}

int f2c (int fahrenheit) {
	int celsius;
	celsius = (5.0/9.0) * (fahrenheit-32);
	return celsius;
}
