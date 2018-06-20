static void swap(int *a, int *b) {
  int temp = *a;
  *a = *b;
  *b = temp;
}

void bubbleSort(int numbers[], int array_size) {
  int i, j;
  for (i = (array_size - 1); i > 0; i--) {
    for (j = 1; j <= i; j++) {
      if (numbers[j-1] > numbers[j])
      	swap(&numbers[j-1], &numbers[j]);
    }
  }
}


