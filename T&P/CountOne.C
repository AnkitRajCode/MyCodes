//WAP to count the number of ones in the binary representation of the given number
// input: 10   output: 2
#include<stdio.h>
int count(int n)
{
	int c=0;
	while(n)
	{
		n=n & (n-1);
		c++;
	}
	return c;
}
int main()
{
	int n;
	printf("Enter a number: ");
	scanf("%d",&n);
	printf("Number of one : %d",count(n));
}
