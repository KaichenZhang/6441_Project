#include<stdio.h>
#include <stdlib.h>

int main() {
	int *array = malloc(3 * sizeof(int));
	if (array == NULL) {
		printf("ERROR: Out of memory.\n");
		return 1;
	}
	*array = 1;
	*(array + 1) = 3;
	*(array + 2) = 5;
	printf("%d\n", *array);
	printf("%d\n", *(array + 1));
	printf("%d\n", *(array + 2));
	free(array);
	return 0;
}
