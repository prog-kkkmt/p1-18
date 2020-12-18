#include <stdio.h>
#include "sortings.h"
//Главное меню
void menuSort(){
	printf("0. Назад\n");
	printf("1. Сортировка выбором\n");
	printf("2. Сортировка пузырьком\n");
	printf("\n");
}

//Сортировка выбором
void SelSort(){
	FILE *fin = fopen("selsort.txt", "r");
	char ch;
	printf("\n-------------------------------\n");
	printf("\n");
	while ( (ch = getc(fin)) != EOF )
		printf("%c", ch);
	printf("\n-------------------------------\n");
}

//Сортировка пузырьком
void BubbleSort() {
	FILE *file = fopen("bublesort.txt", "r");
	char ch;
	printf("\n-------------------------------\n");
	printf("\n");
	while ( (ch = getc(file)) != EOF )
		printf("%c", ch);
	printf("\n-------------------------------\n");

}

//Меню сортировок
void sortings(){
	printf("\n");
	int n = -1;
	while (n != 0){
		menuSort();
		printf(">> ");
		scanf("%d", &n);
		if (n == 1)
			SelSort();
		else if (n == 2)
			BubbleSort();
		
	}
	printf("\n");
}
