#include <stdio.h>

float resistor1=0; //variable resistor1
float resistor2=0; //variable resistor2

float daisychaining=0; //variable daisychaining
float serialconnection=0; //variable daisychaining just for the fun of it/assembly
float parallelconnection=0; //variable parallelconnection


int main(void) {
	printf("\nAlchotech Equivalence version 1.0a\nPlease enter the value of resitor number 1 in Ohms: ");
	scanf("%f",&resistor1);
	printf("\nThank you!\nPlease enter the value of resitor number 2 in Ohms: ");
	scanf("%f",&resistor2);

	daisychaining=resistor1+resistor2;
	serialconnection=daisychaining;
	parallelconnection=(resistor1*resistor2)/(resistor1+resistor2);
	
	printf("\nThank you!\nEquivalent resistance when the resistor are in series: %f.",serialconnection);
	printf("\nEquivalent resistance when the resistor are in parallel: %f.\n",parallelconnection);

    return 0;
}