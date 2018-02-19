#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

int star(int numberof);
int sinefig();

//Function main:
int main(void) {

	sinefig();

	int stars,i;
	printf("\nEnter the number rows you want to write with stars: (1-80)");
	scanf("%d",&stars);

	while(stars<1||stars>80){
		printf("\nEnter the number of rows you want to write with stars: (1-80)");
		scanf("%d",&stars);
	}

	for(i=0;i<stars;i++){
		star(i);
		printf("\n");
	}


	return 0;
}//end main


int star(int numberof){

	int i;

	for(i=0;i<numberof+1;i++){
		printf("*");
	}
	return 0;
}// end star

int sinefig(){
	float pi=M_PI;
	float steps=pi/30.0;
	float angle,curval,counter;

	printf("\nPi: %.4f. Steps: %.4f",pi,steps);

	while(counter<30){
		curval=counter*steps;
		angle=40*sin(curval);
		printf("\nCurval: %.2f.Angle: %.2f.	Stars: ",curval,angle);
		star((int)angle);
		counter++;
	}


	return 0;

}