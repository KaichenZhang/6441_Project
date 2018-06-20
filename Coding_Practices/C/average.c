#include<stdio.h> 

float getAverage(float[], int);

int main() {
	float numbers[5] = {1, 2.5, 9, 11.5, 23.5};
	printf("Array average: %.1f.\n", getAverage(numbers, 5));
	return 0;
}

float getAverage(float list[], int size) {
	int i;
	float sum = 0.0;
	float average = 0.0;
	for (i=0; i<size; i++)
		sum = sum + list[i];
	average = (sum/size);
	return average;
}
