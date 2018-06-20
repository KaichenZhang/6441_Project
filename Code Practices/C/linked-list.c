#include<stdio.h>
#include <stdlib.h>

struct node {
	int data;
	struct node *next;
};

int main() {
	struct node *head = NULL;
	struct node *new;

	head = malloc(sizeof(struct node));
	if (head == NULL) {
		printf("ERROR: Out of memory.\n");
		return 1;
	}
	head->data = 5;
	head->next = NULL;  

	new = malloc(sizeof(struct node));
	if (new == NULL) {
		printf("ERROR: Out of memory.\n");
		return 1;
	}
	new->data = 11;
	new->next = head;
	head = new;

	printf("%d ", head->data);
	printf("%d ", (head->next)->data);
	return 0;    
}
