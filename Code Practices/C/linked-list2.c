#include<stdio.h>
#include <stdlib.h>

struct node {
	int data;
	struct node *next;
};

int main() {
	struct node *head = NULL;
	struct node *current;
	int counter;
	for(counter=1; counter<=10; counter++) {
		current = malloc(sizeof(struct node));
		if (current == NULL) {
			printf("ERROR: Out of memory.\n");
			return 1;
		}
		current->data = counter;
		current->next = head;
	  head = current;
	}
	current = head;
	while(current) {
		printf("%d ", current->data);
		current = current->next;
	}
	return 0;    
}
