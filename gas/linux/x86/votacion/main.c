#include <stdio.h>

extern int _vote(int a, int b, int c);

int main(int argc, char** argv)
{
	int a, b, c, result;
	printf("First vote [0/1]\n");
	scanf("%d",&a);
	printf("Second vote\n");
	scanf("%d",&b);
	printf("Third vote\n");
	scanf("%d",&c);
	result=_vote(a,b,c);
	printf("Result is %d\n",result);
	return 0;
}
