#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>



//Variables and prototypes:
float answer1=0;
float answer2=0;
float answer3=0;
//float answer4=0; //unused
float sqrtvalue=0;
char canswer1[2068];
char canswer2[2068];

int sqrtsolver(int a, int b, int c);
int qadrsolver(int a, int b, int c);

//Function main:
int main(void) {

	//Internal variables:
	int a=0;
	int b=0;
	int c=0;

//User-input:
printf("\nThis program solves second degree equations/quadratic equation: a*x*x+b*x+c=0.\nYour first job will be to determine the unknown constants a, b and c.\nPlease enter the value of a: ");
scanf("%d",&a);

printf("\nPlease enter the value of b: ");
scanf("%d",&b);

printf("\nPlease enter the value of c: ");
scanf("%d",&c);	

//call upon determinant:
sqrtvalue=sqrtsolver(a,b,c);

//call upon solver:
qadrsolver(a,b,c);

//First version on printout:
/*if(answer1-(int)answer1==0 && answer2-(int)answer2==0){
	printf("The solution to this quadratic equation is: x1=%.0f, x2=%.0f\nThank you!\n",answer1,answer2);
}

else if(answer1-(int)answer1==0){
	printf("The solution to this quadratic equation is: x1=%.0f, x2=%.3f\nThank you!\n",answer1,answer2);
}
else if(answer2-(int)answer2==0)
{
	printf("The solution to this quadratic equation is: x1=%.3f, x2=%.0f\nThank you!\n",answer1,answer2);
}
else{
	printf("The solution to this quadratic equation is: x1=%.3f, x2=%.3f\nThank you!\n",answer1,answer2);
}*/

//General printout of solutions:
printf("\nThe solutions to this quadratic equation are: x1=%s, x2=%s\nThank you!\n",canswer1,canswer2);
return 0;

} //end main

int sqrtsolver(int a,int b,int c){

int number=(b*b)-(4*a*c);

if (number<0){
	printf("\nThis quadratic equation has no real roots. The solution will be one or more complex roots.\n");
	}//end if

else if(number==0){
	printf("\nThis quadratic equation has one real roots (only one answer).\n");
	}//end else if

else {
	printf("\nThis quadratic equation has two real roots.\n");
	}// end else
return number;

}//end sqrtsolver

int qadrsolver(int a,int b, int c){

	printf("\nInformation entered by user: a=%d, b=%d, c=%d.\n",a,b,c);
	float positive=0;
	int qadr=0;
	

	if (sqrtvalue<0){ //when complex solution (this is partially buggy):
	positive=fabs(sqrtvalue);
	qadr=sqrt(positive);
	answer1=((float)(-b)/(float)(2*a));
	answer2=((float)(qadr)/(float)(2*a));
	answer3=((float)(-qadr)/(float)(2*a));
	
	//Formatted printout:
	if (answer1-(int)answer1==0 &&answer2-(int)answer2==0 && answer3-(int)answer3==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f+%.0f*i",answer1,answer2);
	snprintf(canswer2, sizeof(canswer1), "%.0f+%.0f*i",answer1,answer3);
	}

	else if (answer1-(int)answer1==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f+%.2f*i",answer1,answer2);
	snprintf(canswer2, sizeof(canswer1), "%.0f+%.2f*i",answer1,answer3);
	}

	else if (answer2-(int)answer2==0){
	snprintf(canswer1, sizeof(canswer1), "%.2f+%.0f*i",answer1,answer2);
	snprintf(canswer2, sizeof(canswer1), "%.2f+%.2f*i",answer1,answer3);
	}

	else{
	snprintf(canswer1, sizeof(canswer1), "%.2f+%.2f*i",answer1,answer2);
	snprintf(canswer2, sizeof(canswer1), "%.2f+%.0f*i",answer1,answer3);
	}

	}//end if

else if(sqrtvalue==0){ //when only one solution:

	answer1=((float)(-b)/(float)(2*a));
	answer2=answer1;

	//Formatted printout:
	if (answer1-(int)answer1==0 &&answer2-(int)answer2==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.0f",answer2);
	}

	else if (answer1-(int)answer1==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.2f",answer2);
	}

	else if (answer2-(int)answer2==0){
		snprintf(canswer1, sizeof(canswer1), "%.2f",answer1);
		snprintf(canswer2, sizeof(canswer2), "%.0f",answer2);
	}

	else {
	snprintf(canswer1, sizeof(canswer1), "%.2f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.2f",answer2);
	}



	}//end else if

else { //when two real solution;
	qadr=sqrt(sqrtvalue);
	answer1=((float)(-b+qadr)/(float)(2*a));
	answer2=((float)(-b-qadr)/(float)(2*a));
	
	//Formattted printout:
	if (answer1-(int)answer1==0 &&answer2-(int)answer2==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.0f",answer2);
	}

	else if (answer1-(int)answer1==0){
	snprintf(canswer1, sizeof(canswer1), "%.0f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.2f",answer2);
	}

	else if (answer2-(int)answer2==0){
		snprintf(canswer1, sizeof(canswer1), "%.2f",answer1);
		snprintf(canswer2, sizeof(canswer2), "%.0f",answer2);
	}

	else {
	snprintf(canswer1, sizeof(canswer1), "%.2f",answer1);
	snprintf(canswer2, sizeof(canswer2), "%.2f",answer2);
	}


	}// end else

	

//
return 0;
}//end qadrsolver