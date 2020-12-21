#include <stdio.h>
#include <stdlib.h>
#include "search.h"
#include "sortings.h"
#include "mas.h"

void menu(){
	printf("\n");
	printf("0. Выход\n");
	printf("1. Сортировки\n");
	printf("2. Поиски\n");
	printf("3. Инфо\n");
	printf("4. Изменить массив\n");
	
	printf("\n");
}

int main(){
	//Ввод массива
	int len_mas = 0;
	printf("Введите размер массива:\n");
	printf(">> ");
	scanf("%d", &len_mas);
	
	int *mas = (int*) malloc(len_mas+1);
	InputMas(mas, len_mas);

	int n = -1;
	printf("\n");
	while (n != 0){
		menu();
		printf(">> ");
		scanf("%d", &n);
		
		//1. Сортировки
		if (n == 1)
			MenuSort(mas, &len_mas);
					
		//2. Поиски
		else if (n == 2)
			PrintSearch(mas, &len_mas);
		
		//3. Инфо
		else if (n == 3)		
			//
		
		//4. Изменить массив
		else if (n == 4)
			MenuMas(mas, &len_mas);
	}
	
	free(mas);
	
	return 0;
}
