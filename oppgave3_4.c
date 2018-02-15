#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>
#include <complex.h>

float hypotenuse(float x, float y);
float pytagoras();
float linespace();


//Function main:
int main(void) {

	int choice=0;

	printf("\nPlease choose one of the following three options:\n1: Calculate length of hypotenuse of right triangle.\n2: Calculate space between two points.\n3: Quit.\nPlease make your choice (1 - 3): ");
	scanf("%d",&choice);

	while(choice!=3){

		while(choice<1 || choice>3){
			printf("\nInvalid choice. You will follow the instructions please!\nPlease make your choice (1 - 3): ");
			scanf("%d",&choice);
		}

		if(choice==1){
			pytagoras();
			printf("\nPlease choose one of the following three options:\n1: Calculate length of hypotenuse of right triangle.\n2: Calculate space between two points.\n3: Quit.\nPlease make your choice (1 - 3): ");
			scanf("%d",&choice);
		}
		else if (choice==2) {
			linespace();
			printf("\nPlease choose one of the following three options:\n1: Calculate length of hypotenuse of right triangle.\n2: Calculate space between two points.\n3: Quit.\nPlease make your choice (1 - 3): ");
			scanf("%d",&choice);
		}

	

	}

	return 0;
}//end main

float hypotenuse(float x, float y){

	float hypo=0;
	float qadr=0;

	qadr=(x*x)+(y*y);
	hypo=sqrt(qadr);

	return hypo;
}

float pytagoras(){
	float cath1=0;
	float cath2=0;
	float hypo=0;

	printf("\nYou have choosen number 1.\nPlease enter length of catheti number 1: ");
	scanf("%f",&cath1);
	printf("\nPlease enter length of catheti number 2: ");
	scanf("%f",&cath2);

	hypo=hypotenuse(cath1, cath2);

	printf("\nThe hypotenuse of this right triangle is: %.2f.\n",hypo);

return 0;
}

float linespace(){
	float x1=0;
	float x2=0;

	float y1=0;
	float y2=0;

	float p1=0;
	float p2=0;

	float distance=0;

	printf("\nYou have choosen number 2.\nEnter the coordinates of the first point (x1,y1).\nx1: ");
	scanf("%f",&x1);
	printf("y1: ");
	scanf("%f",&y1);
	printf("\nEnter the coordinates of the first point (x2,y2).\nx2: ");
	scanf("%f",&x2);
	printf("y2: ");
	scanf("%f",&y2);

	p1=x2-x1;
	p2=y2-y1;

	distance=hypotenuse(p1, p2);

	printf("\nThe distance between those two points is: %.2f.\n",distance);

return 0;
}