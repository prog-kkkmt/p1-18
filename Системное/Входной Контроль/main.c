#include <stdio.h>
#include "card_struct.h"
int main() {
	FILE * data;
	Card first;
	Card second;
	data = fopen("data.txt", "r");
	int answer;
	bool isFirst, isSecond;
	isFirst = isSecond = false;
	printf("1: Вынуть первую карту из колоды\n");
	printf("2: Вынуть вторую карту из колоды\n");
	printf("3: Бьёт ли первая карта вторую?\n");
	printf("4: Выход.");
	while(answer !=4){
	scanf("%d", &answer);
	switch(answer){
		case 1:
		if(!isFirst){
			printf("Первая карта вынута\n");
			fscanf(data, "%d : %d", &first.suit, &first.card_n);
			isFirst = true;
			break;
		}
		else {
			printf("Первая карта уже вынута\n");
			break;
		}
		case 2:
		if(!isSecond){
			printf("Вторая карта вынута\n");
			fscanf(data, "%d : %d", &second.suit, &second.card_n);
			isSecond = true;
			break;
		}
		else{
			printf("Вторая карта уже вынута\n");
			break;
		}
		case 3:
		if(isFirst && isSecond){
			if(beat(first, second, Hearts)) {
				printf("Первая карта бьет вторую);\n");
				break;
			}
			else {
				printf("Первая карта не бьёт вторую\n");
				break;
			}
		} else {
			printf("Нужно вынуть обе карты\n");
			break;		
		}
	}
}

}
