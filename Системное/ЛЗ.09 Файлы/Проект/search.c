#include <stdio.h>
#include "sortings.h"
//Главная меню
void menuSearch(){
	printf("0. Назад\n");
	printf("1. Линейный поиск\n");
	printf("2. Бинарный поиск\n");
	printf("\n");
}

//Бинарный поиск
void biSearch(){
	FILE *file = fopen("biSearch.txt", "r");
	char ch;
	printf("\n-------------------------------\n");
	printf("\n");
	while ( (ch = getc(file)) != EOF )
		printf("%c", ch);
	printf("\n-------------------------------\n");

}

//Линейный поиск
void liSearch(){
	FILE *file = fopen("liSearch.txt", "r");
	char ch;
	printf("\n-------------------------------\n");
	printf("\n");
	while ( (ch = getc(file)) != EOF )
		printf("%c", ch);
	printf("\n-------------------------------\n");

}

//Меню поисков
void search(){
	printf("\n");
	int n = -1;
	while (n != 0){
		menuSearch();
		printf(">> ");
		scanf("%d", &n);
		
		if(n == 1){
			liSearch();
		}
			
		else if (n == 2){		
			biSearch();
		}
		
	}
}
