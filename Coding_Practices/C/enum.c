#include <stdio.h>

enum direction { NORTH, SOUTH, EAST, WEST }; 

int main() {
	char my_dir[256];
	printf("Where do you want to go? ");
	scanf("%s", my_dir); 
	
	switch (my_dir) {
		case (my_dir == NORTH):
			printf("Going north...\n");
			break;
		case (my_dir == SOUTH):
			printf("Going south...\n");
			break;
		case (my_dir == EAST):
			printf("Going east...\n");
			break;
		case (my_dir == WEST):
			printf("Going west...\n");
			break;
		default:
			printf("Error.\n");
			break;
	}
	return 0;
} 
