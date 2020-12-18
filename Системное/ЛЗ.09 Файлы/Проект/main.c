#include <stdio.h>
#include "sortings.h"
void menu(){
	printf("0. Выход\n");
	printf("1. Сортировки\n");
	printf("2. Поиски\n");
	printf("\n");
}

int main(){
	int n = -1;
	printf("\n");
	while (n != 0){
		menu();
		printf(">> ");
		scanf("%d", &n);
		
		//1. Сортировки
		if (n == 1)
			sortings();
					
		//2. Поиски
		else if (n == 2)
			search();			
	}
	
	return 0;
}
