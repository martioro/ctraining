#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

int minimum(int a, int b, int c); //prototype minimum


//Function main:
int main(void) {
	
	srand(time(NULL));
	int nmb1=rand()%1000+1;
	int nmb2=rand()%1000+1;
	int nmb3=rand()%1000+1;
	int smallest=minimum(nmb1,nmb2,nmb3);

	printf("\nNumber 1: %d. Number 2: %d. Number 3: %d.\nThe smallest number: %d.\n",nmb1,nmb2,nmb3,smallest);

return 0;
	}// end main

int minimum(int a, int b, int c) {

	int minst=a;

	if (b<minst){
		minst=b;
	}

	if (c<minst){
		minst=c;
	}

	return minst;

	}//end minimum