#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

int dice(); //prototype dice
int i=0;
int j=0;
int result=0;
int six=0;
int sixh=0;
float ipers=0;
float test1=0;
int percentage;

//Function main:
int main(void) {
	
	srand(time(NULL));

	printf("\nEnter the number of dice you wish to complete: (0-3000): ");
	scanf("%d",&j);
	while(j<0||j>3000){
		printf("\nValid number are 0-3000: ");
		scanf("%d",&j);
	}

	for(i=0;i<j;i++){
		result=dice();
		if (result==6){
			six++;
			printf("\nThe dice has shown the number six %d times!",six+1);
			}//end if
	}//end for

	if(i>100){
		ipers=i/100;
		sixh=six;
	}

	else{
		ipers=i;
		sixh=six*100;
	}

	//printf("\nDebug: %f.\n",ipers);

	percentage=(sixh/ipers);
	test1=((float)six/(float)i)*100;
	printf("\nThe dice has been rolled %d times. Number six was presented %d times.",i,six);
	printf("\nThis occurred on %d percent of the throws (with buggy), and %.2f percent (without buggy).\n",percentage,test1);
return 0;
	}// end main

int dice() {

	int rolling=rand()%6+1;
	
	return rolling;
	}//end dice