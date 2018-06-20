#include <stdio.h>

void swap(int a, int b) {
  int temp = a;
  a = b;
  b = temp;
}

int main() {
  int first, second;
  printf("Enter two integers: ");
  scanf("%d%d", &first, &second);
  printf("First: %d, Second: %d.\n", first, second);
  printf("Swap in progress...\n");
  swap(first, second);
  printf("First: %d, Second: %d.\n", first, second);
  return 0;
}
