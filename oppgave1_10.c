#include <stdio.h>
#include <math.h>

int clocktime (int tottime); //prototype function clocktime


int main(void) {

	int total=0;

	printf("\nHello!\nPlease enter the total number of seconds that you wish to convert into minutes and seconds: ");
	scanf("%d",&total);

	clocktime(total);

	return 0;
}

int clocktime (int tottime) { //Ideally this function should be returning both minutes and seconds. I guss this will have to be solved using some kind of stuct.

	printf("\nFunction clocktime reports %d total time.\n",tottime);

	int minutes=0;
	int seconds=0;

	minutes=tottime/60;
	seconds=tottime%60;

	printf("\n%d total seconds is equivalent to %d minutes and %d seconds.\n",tottime,minutes,seconds);

	return 0;

}


