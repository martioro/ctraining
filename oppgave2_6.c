#include <stdio.h>

int counter=0; //the number of test registered
int points=0; //the numver of points on each test
int total=0; //the total number of points
float avrpoints=0;


int main(void) {

printf("\nTest registration program. Your way of a convenient registration.\n");

for (counter=0;counter<5;counter++){
	printf("\nEnter a testscore for test number %d (between 1 and 100 points): ",counter+1); 
	scanf("%d",&points);
	total=total+points;
	while(points>100 || points<1) { //while entering an invalid number of points
		printf("\nYou have entered an invalid number of points. Try again...");
		printf("\nEnter a testscore for test number %d (between 1 and 100 points): ",counter+1); 
		scanf("%d",&points);
		}//end while
	}//end for
	avrpoints=(float)total/counter;
	printf("\nThe average of points are: %.4f. This gives you the grade ",avrpoints);

	if (avrpoints>=98){
		printf("A! Congratulations! ");
	}//end if
	else if(avrpoints>=81 && avrpoints<98){
		printf("B! Congratulations! ");
	}//end else if
	else if(avrpoints>=41 && avrpoints<81){
		printf("C! Keep it up. We are sure that you could do better! ");
	}//end else if
	else if(avrpoints>=26 && avrpoints<41){
		printf("D! We think that you need to work more on this! ");
	}//end else if
	else if(avrpoints>=6 && avrpoints<26){
		printf("E! We think that you should consider studying something else! ");
	}//end else if
	else if(avrpoints>=0 && avrpoints<6){
		printf("F! Epic fail! You are dumb! ");
	}//end else if
	printf("Your total score is %d.\n",total);
} //end main

