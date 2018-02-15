#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

int determin(int nmbr1, int nmbr2);


//Function main:
int main(void) {

	int number1;
	int number2;
	int i=0;
	int iterations=0;
	int smallest=0;
	printf("\nHow many iterations do you want to excecute (1-13)? ");
	scanf("%d",&iterations);
	while(iterations<1 || iterations>13){
		printf("\nInvalid number of iterations! You will follow the instructions please!\nHow many iterations do you want to excecute (1-13)? ");
		scanf("%d",&iterations);
	}
	printf("\nThe program will now the smallest of two individual numbers (include the initual random value at startup).");

	for(i=0;i<iterations;i++){
		printf("\nAt iteration number %d the value of number 1 is %d, and the value of number 2 is %d.\n",i+1,number1,number2);
		smallest=determin(number1,number2);

		if(smallest==number1){
		printf("The smallest number is number 1: %d.",smallest);
		}

		else{
		printf("The smallest number is number 2: %d.",smallest);
		}
		
		if(i<iterations-1){
			printf("\nPlease enter a number: ");
			scanf("%d",&number1);
			printf("\nPlease enter another number: ");
			scanf("%d",&number2);
			}//end if

		}
	
	printf("\n");
	return 0;
}//end main


int determin(int nmbr1, int nmbr2){
	int answer;
	
	if(nmbr1<nmbr2){
		answer=nmbr1;
	}

	else{
		answer=nmbr2;
	}

	return answer;
}//end header