#include <stdio.h>

int tabell; //hvilken tabell skal gjennomkjøres
int svar=0; //svar på multiplikasjoner
int i; //tellevariabel for løkke


int main(void) {

	printf("\nVelkommen til dette multiplikasjonsprogrammet. Vennligst skriv inn hvilken rekke fra den lille multiplikasjonstabellen du vil beregne: ");
	scanf("%d",&tabell);

	while(tabell>10){ //dersom bruker velger rekke utover den lille multiplikasjonstabellen

		printf("\nVennligst benytt den lille multiplikasjonstabellen. Velg på nytt: ");
		scanf("%d",&tabell);
	}

	for(i=1;i<11;i++){

		svar=tabell*i;
		printf("\n%d * %d = %d", tabell,i,svar); //skriver ut svaret
	}

	printf("\nBeregning utført. Programmet avslutter...\n");

	return 0;
}