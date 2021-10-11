#include<stdio.h>
int main()
{
	int n,i,s,j;
	printf("Enter no of bus stop : ");
	scanf("%d",&n);
	int B[n];
	printf("enter no of buses from each bus stop : ");
	for(i=0;i<n;i++)
	{
		scanf("%d",&B[i]);
	}
	for(i=0;i<n;i++)
	{
		s=B[i];
		for(j=2*i+1;j<n;j=j+i+1)
		{
			B[j]=B[j]-s;
		}
		printf("%d ",s);
	}
	return 0;
	
}
