#include <stdio.h>

extern int _add(int a, int b);
extern int _substract(int a, int b);

int main(int argc, char** argv)
{
	int a=20,b=10;
	printf("ASM: 20+10=%d",_add(a,b));
	printf("ASM: 20-10=%d",_substract(a,b));
	return 0;
}
