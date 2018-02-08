#include <stdio.h>

int number1=0;
int number2=0;

int main(void) {

	printf("\nWelcome. Please enter a random number: ");
	scanf("%d",&number1);
	printf("\nPlease enter another random number: ");
	scanf("%d",&number2);

	if(number1<number2){
		printf("\nThe number 2: %d is greater than the number 1: %d.",number2,number1);
	}//end if

	else if(number1==number2)
		{
		printf("\nThe two numbers are alike.");
	}//end elseif
	else
		{
		printf("\nThe number 1: %d is greater than the number 2: %d.",number1,number2);
	}
	printf("\n");
	return 0;
	}

