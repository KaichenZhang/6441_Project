#include <stdio.h>

extern void bubbleSort(int[], int);

int main() {
  int array[10], numberOfElements;
  printf("Enter number of elements: ");
  scanf("%d", &numberOfElements);
  printf("Enter %d integers: ", numberOfElements);
  for (int i = 0; i < numberOfElements; i++)
		scanf("%d", &array[i]);
	bubbleSort(array, numberOfElements);
	printf("Sorted list (ascending order): ");
  for (int i = 0 ; i < numberOfElements ; i++)
		printf("%d ", array[i]);
  return 0;
}
