#include <stdio.h>

int main()
{
	for(int i = 0 ;i< 16; i = i + 1)
	{
		for(int j= 0;j <16; j = j  + 1)
			printf("%4d ", ((i+1)*(j+1))%255);
	printf("\n");
	}
}
