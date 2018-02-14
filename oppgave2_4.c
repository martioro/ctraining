#include <stdio.h>

//Variabler:
int barnepris=100;
int voksenpris=180;

int antallbarn=0;
int antallvoksne=0;

int totalant=0;

int totalpris=0;

int main(void) {

	printf("\nJasså, så du ønsker å gå på teater?\nOK!\nVennligst skriv inn antall barn: ");
	scanf("%d",&antallbarn);

	printf("\nVennligst skriv inn antall voksne: ");
	scanf("%d",&antallvoksne);

	totalant=antallbarn+antallvoksne;

	printf("\nAntall barn: %d. Antall voksne: %d. Totalt antall: %d.",antallbarn,antallvoksne,totalant);

	if(totalant>10){

		totalpris=(barnepris*antallbarn)+(voksenpris*antallvoksne);
		printf("\nHer skulle totalprisen egentlig vært %d, men ",totalpris);

		totalpris=((barnepris*antallbarn)+(voksenpris*antallvoksne))*0.9;
		printf("siden dere er såpass mange så blir det faktisk 10%% rabatt.\nTotalpris: %d.",totalpris);

	}//end if

	else{
		totalpris=(barnepris*antallbarn)+(voksenpris*antallvoksne);
		printf("\nTotalpris: %d.",totalpris);
	}//end else

	printf("\n");

} //end main

