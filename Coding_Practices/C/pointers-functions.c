#include <stdio.h>

long factorial(int);

int main() {
  int n;
	long f;
	long (*ptr)(int);	/* declare a pointer to a function that takes an int and returns long */
	ptr = &factorial; /* initialize pointer to point to factorial */
	printf("Enter a non-negative integer: ");
  scanf("%d", &n); 
  if (n < 0)
    printf("Negative integers are not allowed.\n");
  else
    f = ptr(n);
  printf("%d! = %ld\n", n, f);
	return 0;
}

long factorial(int n) {
  if (n == 0)
    return 1;
  else
    return(n * factorial(n-1));
}
