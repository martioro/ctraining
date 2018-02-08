#include <stdio.h>
#include <math.h>

int partsnumber(int number);
int modnumber(int number);
int cross(int number1, int number2, int number3);

int main(void) {

	int number=0;

	int intermediate1=0;
	int intermediate2=0;
	int intermediate3=0;
	int intermediate4=0;
	int cross_sum=0;

	printf("\nPlease enter a three digit number: ");
	scanf("%3d",&number);

	intermediate4=modnumber(number);
	intermediate3=partsnumber(number); //not to be used in final calulation
	intermediate2=modnumber(intermediate3);
	intermediate1=partsnumber(intermediate3);

	cross_sum=cross(intermediate1,intermediate2,intermediate4);

	printf("\nThe digit sum of the number %d is %d.\n",number,cross_sum);

	return 0;
	}

int partsnumber(int number) {

	int number1=number/10;

	printf("\n Debug: Output from function partsnumber - number1: %d.\n",number1);

	return number1;

}

int modnumber(int number) {

	int number2=number%10;

	printf("\n Debug: Output from function modnumber - number2: %d.\n",number2);

	return number2;

}

int cross(int number1, int number2, int number3){

	int total=number1+number2+number3;

	printf("\n Debug: Output from function cross - total: %d.\n",total);

	return total;
}