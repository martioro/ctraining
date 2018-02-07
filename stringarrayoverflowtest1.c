#include <stdio.h>

char input[20];

int i=0;


int main(void) {

	printf("\nSkriv inn tekst under: ");
	scanf("%20s", input);
	printf("\n");

	for(i=0;i<20;i++){

		printf("%c",input[19-i]);

	}

	for(i=0;i<20;i++){

		printf("\n%c",input[i]);
	}

	printf("\n");

    return 0;
}

