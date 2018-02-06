#include <stdio.h>

int barn=0; //variabel barn: antallet barn
int voksen=0; //variabel voksen; antallet voksne
int barnepris=150; //hvor mye en barnebillett koster
int voksenpris=210; //hvor mye en voksenbillett koster
int billettsum; //samlet sum på hvor mye som må betales

int main(void) {

	printf("\nVelkommen til Tusenfryd sitt offline vintage billettprogram.\nVennligst skriv inn antallet barn: ");
	scanf("%d",&barn);

	while(barn>20){ //dersom antallet barn er litt for høyt for å være fornuftig
		printf("\nDette vintage programmet kan ikke håndtere såpass mange barn.\nVennligst skriv inn antallet barn: ");
		scanf("%d",&barn);
	}

	printf("\n\nVennligst skriv inn antallet voksne: ");
	scanf("%d",&voksen);

	while(voksen>20){ //dersom antallet barn er litt for høyt for å være fornuftig
		printf("\nDette vintage programmet kan ikke håndtere såpass mange voksne.\nVennligst skriv inn antallet voksne: ");
		scanf("%d",&voksen);
	}

	billettsum=(barn*barnepris)+(voksen*voksenpris);

	printf("\nTotalsummen for inntreden til denne overprisede og overvurderte fornøyelsesparken blir: %d!!!!\nProgrammet avsluttes...\n",billettsum);

    return 0;
}