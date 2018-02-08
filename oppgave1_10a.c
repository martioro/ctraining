#include <stdio.h>
#include <math.h>

int clocktimemin (int totminutes); //prototype function clocktime minutes
int clocktimesec (int totminutes); //prototype function clocktime seconds


int main(void) {

	int total=0;
	int minutes=0;
	int seconds=0;

	printf("\nHello!\nPlease enter the total number of seconds that you wish to convert into minutes and seconds: ");
	scanf("%d",&total);

	minutes=clocktimemin(total);
	seconds=clocktimesec(total);

	printf("\n%d total seconds is equivalent to %d minutes and %d seconds.\n",total,minutes,seconds);	

	return 0;
}

int clocktimemin (int totminutes) { 

	printf("\nFunction clocktimemin reports %d total time.\n",totminutes);

	int minutes=0;

	minutes=totminutes/60;
	
	return minutes;

}

int clocktimesec (int totminutes) {

	printf("\nFunction clocktimesec reports %d total time.\n",totminutes);

	int seconds=0;

	seconds=totminutes%60;
	
	return seconds;
}