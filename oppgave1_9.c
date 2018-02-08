#include <stdio.h>
#include <math.h>

int celcius=38;
int fahrenheit=0;


int main(void) {

	int feilfahr=(9/5)*celcius+32;

	fahrenheit=(9.0/5.0)*celcius+32;
	
	printf("\n%d grader celcius er ikke %d, men %d fahrenheit.",celcius,feilfahr,fahrenheit);

	printf("\nSkriv inn antallet grader celcius du vil omregne til fahrenheit: ");
	scanf("%3d",&celcius);

	feilfahr=(9/5)*celcius+32;
	
	fahrenheit=(9.0/5.0)*celcius+32;
	
	printf("\n%d grader celcius er ikke %d, men %d fahrenheit.",celcius,feilfahr,fahrenheit);
	printf("\n");

    return 0;
}


