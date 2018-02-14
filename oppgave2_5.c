#include <stdio.h>


int main(void) {

int number=0; //number entered by user
int min=0; //lovest number registered
int max=0; //highest number regisered
float average=0; //average
int counter=0; //incremented for each new entry 
int total=0; //the total value of the numbers entered by user

printf("\nPlease enter a positive number or a zero (entering a negative number ends the program): ");
scanf("%d",&number);

if(number==0 && counter==0){ //if statement if the first number entered is a zero
	printf("\nThe first number you have entered is zero. Only the counter will be incremented.\n");
		counter++;

}//end firstif
else if (number>0) {
	printf("\nYou have entered a positive number: %d. Feeding this number into the registration program...",number);
	counter++;
	min=number;//sets min equal to number
	max=number;//sets max equal to number

}//end else if
else{
	printf("\nNo numbers have been registrered. Ending registration...\n");
}//end else


while(number>=0){
	total=total+number;
	printf("\nNumbers entered: %d.\nPlease enter a positive number or a zero (entering a negative number ends the program): ",counter);
	scanf("%d",&number);

	if(number<0){ //breaks if user enters a zero (this loop is never executed I think...)
		if(counter==0){
			printf("\nNo numbers have been registrered. Ending registration...\n");
			break;

		}//end if2
		else{
			printf("\nYou have entered a negative number. Ending registration.\n");
		}//end else2

	}//end if1

	else if(number==0){
		printf("\nYou have entered zero. Only the counter will be incremented.\n");
		counter++;
	}//end else if

	else{
		printf("\nYou have entered a positive number: %d. Feeding this number into the registration program...",number);
		if(number<min){ //if number is less than min
			min=number; //sets min equal to number
		}//end if
		else if (number>max) { //if number is greater than max
			max=number;
		}//end else if
		counter++;
	}//end else

} //end while	

if (counter>0){ //average is calculated if any number is entered by user
	average=(float)total/counter;
}

printf("\nTotal numbers registered: %d. The sum of these numbers are: %d.\nThe smallest number entered was: %d. The biggest number entered was: %d.\nAverage value: %.2f.\n",counter,total,min,max,average);

} //end main

