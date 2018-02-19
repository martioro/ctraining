#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

float ctof(float celcius); //prototupe ctof converter

//Function main:
int main(void) {
	
	int i;
	float celcius, fahrenheit;

	printf("\nEnter the temparture in celcius that you wish to convert into fahrenheit: ");
	scanf("%f",&celcius);

	fahrenheit=ctof(celcius);

	printf("\n%.1f celcius is equal to %.1f in fahrenheit.\n",celcius,fahrenheit);


	return 0;
}//end main


float ctof(float celcius){

	float fahr=((9.0/5.0)*celcius+32); //note decimals in division
	return fahr;

}// end ctof