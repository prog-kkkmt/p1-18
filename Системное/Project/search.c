#include <stdio.h>
#include "sortings.h"
#include "mas.h"
#include "search.h"

void SearchMenu(){
	printf("\n");
	printf("0. Выход\n");
	printf("1. Линейный поиск\n");
	printf("2. Бинарный поиск\n");
	printf("\n");
}

void PrintSearch(int *mas, int *len_mas){
	printf("\n");
	int n = -1, key;
	while (n != 0){
		SearchMenu();
		printf(">> ");
		scanf("%d", &n);
		
		if (n == 1){
			printf("Введите элемент, который нужно найти: \n");
			printf(">> ");
			scanf("%d", &key);
			printf("%d", key);
			LiSearch(mas, key, *len_mas);
		}
		
		if (n == 2){
			printf("Введите элемент, который нужно найти: \n");
			printf(">> ");
			scanf("%d", &key);
			BiSearch(mas, key, *len_mas);
		}
	
	}

}

void LiSearch(int *mas, int key, int len_mas){
	int flag = 0;
	int i = 0;
	for (i = 0; i < len_mas; i++){
		if (mas[i] == key){      			
			flag = 1;
			break;
		}
	}
	
	if (flag == 1)
		printf("Заданный ключ находится на %d позиции\n", i + 1);
	else
		printf("Такого элемента нет!!!!\n");
}

int BiSearch(int *mas, int key, int len_mas){
	int l = 0,  r = len_mas - 1, m;
    
	while(l <= r){          
        	m = (l + r) / 2;
        	if (mas[m] == key){
			return printf("Заданный ключ находится на %d позиции\n", m + 1);
        	}
        	else if (mas[m] > key){
            		r = m - 1; 
        	}
        	else{
            		l = m + 1; 
		}        
    	}
	return printf("Такого элемента нет!!!!\n");
}



