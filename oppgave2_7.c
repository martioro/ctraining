#include <stdio.h>
#include <math.h>

int i=0; //counter
int number=0; //variable number: user input
int qadr=0; //result if varible nmb is multiplied with itself
//int qadrsave=0; //unused but saved for the fun of it
int nmb=0; //variable nbm: calculated
//int nmbsave=0; //unused but saved for the fun of it
float answer=0;


int main(void) {

printf("\nPlease enter a number (0-9999): ");
scanf("%4d",&number);
printf("\nNumber registered: %d.",number);
while(number<0){ //while user enters an invalid number:
	printf("\nInvalid number!\nPlease enter a number (0-9999): ");
	scanf("%4d",&number);
	printf("\nNumber registered: %d.",number);
} //end while
answer=sqrt(number);

for(i=0;i<number;i++){
	qadr=nmb*nmb;
	//nmbsave=nmb-1; //unused but saved for the fun of it
		
	
	if(qadr>number){ //executes as long as variabel qadr is less than number
		break;
		}//end if
		printf("\nProgram execution: Iteration number %2d: nmb=%d. %3d*%3d=%4d.",i,nmb,nmb,nmb,qadr);
		//qadrsave=qadr; //unused but saved for the fun of it
		nmb++;
	}//end for

printf("\n%d is the smallest number that is greater than %d when sqared.\nTotal number of iterations: %d.\n",nmb,number,i);

if(answer-(int)answer==0){ //test if an exact number (no decimals):

	printf("Exact: %.0f*%.0f=%d.\n",answer,answer,number);
	}//end if

else{ // else "if decimals":
	printf("Rounded: %.2f*%.2f=%d.\n",answer,answer,number);
	}//end else

} //end main