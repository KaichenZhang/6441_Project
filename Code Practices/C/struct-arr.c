#include<stdio.h>
 
typedef struct {
	float x;
	float y;
} coordinate;
 
int main() {
	coordinate line[2] = {
		{0, 0},
		{11, 19}
	};
	printf("Line points: (%.0f, %.0f), and (%.0f, %.0f).\n",
		    line[0].x, line[0].y, line[1].x, line[1].y );
  return 0;
}


	
