/*
line1- 	1
		3*2
		4*5*6
		10*9*8*7
		11*12*13*14*15 
		21*20*19*18*17*16
*/
#include<stdio.h>
int main()
{
	int i,x=1,j,n,c;
	printf("Enter no of line:");
	scanf("%d",&n);
	for(i=1;i<=n;i++)
	{
		if(i%2==0)
			c=x+i-1;
		else
			c=x;
		for(j=1;j<=i;j++)
		{
			if(i==j)
				printf("%d",c);
			else
				printf("%d*",c);
			if(i%2==0)
				c--;
			else
			    c++;
			x++;
		}
	printf("\n");
	}
return 0;
}
