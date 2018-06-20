#include <stdio.h>

int main() {
	int list[10] = {1,2,3,5,7,11,13,17,19,23};
	int i, lookup;
	int success = 0;
	
	printf("Lookup  for: ");
	scanf("%d",&lookup);
	
	for(i=0; i < 10; i++)
		if(list[i] == lookup) {
			success = 1;
			break;
		}
	if(success == 0)
		printf("The number is not in the list.\n");
	else
		printf("The number is found.\n");
	
	return 0;
}
