#include <stdio.h>

int number=0; //Varibale number. To be tested.
int modulo=0; //Variable modulo.

int main(void) {

	
	printf("\nPlease enter a number: ");
	scanf("%d",&number);

	printf("\nThe number you have entered is: %d. The modulo of this number is: %d.",number,modulo);

	modulo=number%2;

	if(modulo==0){
		printf("\nThe number you have entered is an even number.");
	}

	else {
		printf("\nThe number you have entered is an odd number.");
	}

	printf("\n");

}

