#include <stdio.h>

int main() {
	int arr[5] = {1, 3, 5, 7, 11};
	int *ptr;
	ptr = &arr[0];
	/*printf("arr[0]: %d, arr[1]: %d, arr[2]: %d\n", *ptr, *(ptr + 1), *(ptr + 2)); */
	printf("arr[1]: %d\n", *(ptr) + 1);
  return 0;
}
