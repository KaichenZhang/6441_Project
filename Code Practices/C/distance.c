#include<stdio.h>

/* Declare coordinate, a data type that can hold a cartesian point */
typedef struct {
	float x;
	float y;
} coordinate;

int main() {

 /* We will create three points of type coordinate and use three alternative ways
	  to assign them to values */
 
 /* Use inline declaration and initiliation to create 'point1' at (0,0) */
 coordinate point1 = {0, 0};

 /* Use declaration with designated initializers to create 'point2' at (1,0) */
 coordinate point2 = {.x = 1, .y = 0};

 /* Declare 'point3' */
 coordinate point3;

 /* Assign 'point3' to (1,5) by giving values to the members of its record */
 point3.x = 1;
 point3.y = 5;

 /* Declare 'collection', an array of coordinates that can hold 3 elements */

 coordinate collection[2];

 /* Enter the three points into the array */

 collection[0] = point1;
 collection[1] = point2;
 collection[2] = point3;

 /* Declare 'ptr', a pointer to type coordinate */
 coordinate *ptr;

 /* point ptr to array 'collection' */

 ptr = &collection[0];


 /* We will use two alternative ways to display the three points.
	  The exact output should be
    
	  Point1: (0, 0)
    Point1: (1, 0)
    Point3: (1, 5)

 */
 /* Display the first coordinate by dereferencing the pointer */

 printf("Point1: (%.0f, %.0f)\n", (*ptr).x, (*ptr).y);

 /* Display the second coordinate by dereferencing the pointer */

 printf("Point1: (%.0f, %.0f)\n", (*(ptr+1)).x, (*(ptr+1)).y);

 /* Display the third coordinate using the binary operator -> */
 printf("Point3: (%.0f, %.0f)\n", (ptr + 2)->x, (ptr + 2)->y);

 return 0;
}
