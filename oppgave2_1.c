#include <stdio.h>

int number=0;

int main(void) {

	printf("\nPlease enter a random number: ");
	scanf("%d",&number);

	if(number==0){
		printf("\nThis number reflects the deepest darkness in hell!\n");
	} //end if

	else if(number>0){
		printf("\nThat number is a positive number, greater than zero.\n");
	}//end else if
	else{
		printf("\nThat number is a negative number, less than zero. Perhaps your are i negative creep?\n");
	}

	return 0;
	}

