#include <stdio.h>

int main(void) {

	int radius=0; //Variabel radius: Bruker skriver inn radius på sirkelen.
	float areal=0; //Variabel areal: Beregnet areal lagres her.

	printf("\nSkriv inn radius på sirkelen du vil beregne arealet av: ");
	scanf("%d", &radius);

	areal=radius*radius*3.14;

	printf("\nArealet av sirkelen med radius %d er %f. \n",radius,areal);
	
	return 0;
}