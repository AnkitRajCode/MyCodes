#include<stdio.h>
int main()
{
	int n,d,i;
	int A[10]={0};
	printf("enter a number: ");
	scanf("%d",&n);
	while(n!=0)
	{
		d=n%10;
		A[d]++;
		n=n/10;
	}
	for(i=0;i<10;i++)
	{
		printf("\n%d = %d",i,A[i]);
	}
}
