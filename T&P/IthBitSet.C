//WAP to check if the ith bit is set in the binary representation of the given number
//input 10 7      0
#include<stdio.h>
int check(int n,int i)
{
	if(n & (1<<i))
		return 1;
	else
		return 0;
}
int main()
{
	int n,i;
	printf("enter a number:");
	scanf("%d",&n);
	printf("Enter value of i:");
	scanf("%d",&i);
	if(check(n,i))
		printf("Yes");
	else
		printf("No");
}
