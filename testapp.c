#include <stdio.h>
extern int square(int);
extern int cube(int);
int main()
{
	int x, y;
	printf("Input X: ");
	scanf("%d", &x);
	y = square(x);
	printf("square(%d)=%d\n", x, y);
	y = cube(x);
	printf("cube(%d)=%d\n", x, y);
	return 0;
}
