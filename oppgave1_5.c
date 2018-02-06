#include <stdio.h>

float pound; //Variable pound: User input to converted into kilogram.
float kilogram; //Variable kilogram: Converted pound.

int main(void) {

	printf("\nPound to kilogram converter program version 1.0.\nPlease enter pound to be converted into kilogram: ");
	scanf("%f", &pound); //Writes userinput info to variable pound.

	kilogram=pound*0.454;

	printf("\n %f pound is %f when converted into kilogram.\n",pound,kilogram);

	return 0;
}