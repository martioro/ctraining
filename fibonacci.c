#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

//Countervariables: i and j:
int i=0;
int j=0;
int k=1;
int l=0;
int m=0;

//Function main:
int main(void) {
	
	printf("\nPlease enter the number of iterations of the Fibonacci calulations: (1-40)");
	scanf("%d",&i);

	while(i<1||i>40){

		printf("\nInvalid choice!\nPlease enter the number of iterations of the Fibonacci calulations: (1-40)");
		scanf("%d",&i);
		}// end while

	for(j=0;j<i;j++){

		printf("\nIteration number: %3d: Number: %9d.\n",j+1,k);
		m=k+l;
		l=k;
		k=m;
		}//end for

return 0;
	}