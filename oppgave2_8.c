#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

int randomnumber(int n); //prototype random number


int main(void) {

	int intr=0;
	int number1=0;
	int number2=0;
	int blueprint=0;
	int guessing=0;
	int points=100;
	int degrading=0;
	printf("\nPlease enter the upper end of the intervall (from 1 - 100): ");
	scanf("%d",&intr);
	while(intr<1 || intr>100)
	{
		printf("\nInvalid number!\nPlease enter the upper end of the intervall (from 1 - 100): ");
		scanf("%d",&intr);
	}
	number1=randomnumber(intr);
	number2=randomnumber(intr);
	blueprint=number1+number2;
	printf("\nThank you. Now please solve the following pussle %d+%d= ",number1,number2);
	scanf("%d",&guessing);

	while(guessing!=blueprint){
		degrading++;
		points=points-degrading;
		if(points<0)
		{
			printf("\nYou have no more points. Consider this as an epic fail.\n");
			break;
		}
		printf("\nWrong answer. You have just lost %d points. Current ponts: %d.\nTry again: %d+%d= ",degrading,points,number1,number2);
		scanf("%d",&guessing);
		
	}

		if(points>=0)
			printf("You are correct: %d+%d=%d.\nYour total points: %d.\nThis gives you the grade ",number1,number2,blueprint,points);
		{	
			if (points>=98){
				printf("A! Congratulations! ");
				}//end if
			else if(points>=81 && points<98){
			printf("B! Congratulations! ");
				}//end else if
			else if(points>=41 && points<81){
			printf("C! Keep it up. We are sure that you could do better! ");
				}//end else if
				else if(points>=26 && points<41){
			printf("D! We think that you need to work more on this! ");
				}//end else if
				else if(points>=6 && points<26){
				printf("E! We think that you should consider studying something else! ");
				}//end else if
				else if(points>=0 && points<6){
				printf("F! Epic fail! You are dumb! ");
		}//end else if
	}//end if
	printf("\n");

} //end main

int randomnumber(int n){

	srand(time(NULL));
	int number=rand()%n; //Creates a random number between 0 and n (n is a parameter provided when function is called upon)
	return number;

} //end randomnumber