#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

int randomnumber(int n); //prototype random number


int main(void) {

	int intr=0;
	int number=0;
	int points=100;
	int degrading=0;
	int guessing=0;
	int iqlevel=0;

	printf("\nChoose your level of intelligence from 1 til 100: ");
	scanf("%d",&iqlevel);
	while(iqlevel<1 || iqlevel>100)
	{
		printf("\nChoose your level of intelligence from 1 til 100: ");
		scanf("%d",&iqlevel);	
	}
	if(iqlevel>90){
		printf("\nGenious!");
		number=randomnumber(10000);
	}
	else if(iqlevel>80)
	{
		printf("\nAverage.");
		number=randomnumber(1000);
	}
	else if(iqlevel>40)
	{
		printf("\nBelow average.");
		number=randomnumber(100);
	}
	else  {
		printf("\nDonkey!");
		number=randomnumber(10);
	}

	

	//printf("Debug: \n%d",number); //debug

	printf("\nThe computer has just generated a random number. Please take a guess on that number: ");

	scanf("%d",&guessing);

	while(guessing!=number){

		degrading++;
		points=points-degrading;
		if(guessing<number){
			printf("\nYour number is to low");
			
		} //end if
		else {
			printf("\nYour number is to high");
			
		}

		if(points<0){
			printf(", and you have no more points left. Epic fail!\n");
			break;
		}//end if
		
		else {
			printf(", and your total points are: %d. Please try again: ",points);
		}
		scanf("%d",&guessing);
	}//end while


	if(points>=0){
			printf("You are correct! The number is: %d. Your total points is %d, which gives you the grade ",number,points);
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