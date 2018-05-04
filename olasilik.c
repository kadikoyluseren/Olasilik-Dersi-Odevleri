#include<stdio.h>
void main()
{
	int atisSayisi=1000;
	srand(time(NULL));
	int random[atisSayisi],i;	
	float pay=0;
	float olasilik=0;
	printf("|         |       |         |          |\n");
	printf("|  DURUM  |  ATIS | VURULAN | OLASILIK |\n");
	printf("|_________|_______|_________|__________|\n");
	for(i=0;i<atisSayisi;i++)
	{	
		random[i]=rand()%900+1;
		if(random[i]<100)
		{	
			printf("| (Vurdu) |");
			pay++;
		}
		else
			printf("|         |");
		olasilik=pay/(i+1);
		printf("%4d   | %5.0f   | %f |\n",i+1,pay,olasilik);	
	}	
}
