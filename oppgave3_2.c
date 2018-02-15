#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

float converter(float number);


//Function main:
int main(void) {

	float euro=0;
	float nok=0;

	printf("\nPlease enter the amount of EURO that you want to convert into NOK: ");
	scanf("%f",&euro);

	nok=converter(euro);

	printf("\n%.2f EURO=%.4f NOK.\n",euro,nok);
	
	return 0;
}//end main


float converter(float number){

	float converted=number*7.4055;

	return converted;
}//end header