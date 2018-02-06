#include <stdio.h>
#include <math.h>

int sum (int x, int y);

int diff (int x, int y);

int multi (int x, int y);

float div (int x, int y);


int main(void) {
	
	int tall1=0;
	int tall2=0;

	printf("\nMicroShack adder, differ, multiplier and divider version 1.0abc\nPlease enter a number: ");
	scanf("%d",&tall1);
	printf("\nPlease enter another number: ");
	scanf("%d",&tall2);

	int added=sum(tall1, tall2);
	int differed=diff(tall1,tall2);
	int multiplied=multi(tall1,tall2);
	float divided=div(tall1,tall2);
	int rounddiv=round(divided);

	//printf("%d\n",rounddiv); //debugging shit

	printf("\nThe sum of %d and %d are %d.",tall1,tall2,added);
	printf("\nThe difference of %d and %d are %d.",tall1,tall2,differed);
	printf("\n%d mutliplied with %d are %d.",tall1,tall2,multiplied);
	printf("\n%d divided with %d are %.0d",tall1,tall2,rounddiv);
	printf("\n");

    return 0;
}

int sum (int x, int y) {

	int tall1=x;
	int tall2=y;

	int sum=tall1+tall2;

	return sum;

}

int diff (int x, int y) {

	int tall1=x;
	int tall2=y;

	int diff=tall1-tall2;

	return diff;
}

int multi (int x, int y) {

	int tall1=x;
	int tall2=y;

	int multiplication=tall1*tall2;

	return multiplication;
}

float div (int x, int y) {

	int tall1=x;
	int tall2=y;

	float divided=tall1/tall2;

	return divided;
}