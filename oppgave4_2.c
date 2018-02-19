#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>


//Function main:
int main(void) {

	int i,j,k;

	printf("\ni:		i*i:		i*i*i\n");

	for(i=0;i<11;i++){
		j=i*i;
		k=i*i*i;
		printf("\n%2d		%4d		%4d",i,j,k);
	}
	printf("\n");
	return 0;
}//end main