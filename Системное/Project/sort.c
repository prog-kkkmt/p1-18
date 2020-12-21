#include <stdio.h>
#include <stdlib.h>
#include "sortings.h"
#include "mas.h"
//Меню сортировок
void PrintMenuSort(){
	printf("\n");
	printf("0. Выход\n");
	printf("1. Сортировка выбором\n");
	printf("2. Пузырьковая сортировка\n");
	printf("3. Сортировка Шелла\n");
	printf("4. Сортировка вставками\n");
	printf("5. Ввод массива через консоль\n");
	printf("6. Вывод массива\n");
	printf("7. Изменение массива\n");
	printf("\n");
}

// Вывод сотировок
void MenuSort(int *mas, int *len_mas){
	printf("\n");
	int n = -1;
	while(n != 0){
		PrintMenuSort();
		printf(">> ");
		scanf("%d", &n);
		
		//1. Сортировка выбором
		if (n == 1)
			Sorting(SelSort, mas, *len_mas);
		
		//2. Пузырьковая сортировка
		else if (n == 2)
			Sorting(BubbleSort, mas, *len_mas);
		
		//3. Сортировка Шелла
		else if (n == 3)
			Sorting(ShellSort, mas, *len_mas);
		
		//4. Сортировка вставками
		else if (n == 4)
			Sorting(InsertionSort, mas, *len_mas);
		
		//5. Ввод массива через консоль
		if (n == 5){
			printf("Введите размер массива:\n");
			printf(">> ");
			scanf("%d", &*len_mas);
			InputMas(mas, *len_mas);
		}
		
		//6. Вывод массива
		else if (n == 6)
			PrintMas(mas, *len_mas);
		
		//7. Изменение массива
		else if (n == 7)
			MenuMas(mas, &*len_mas);
	}
}

// {----ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ----} 

// обмен
void swap(int *a, int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp; 
}

void CopyMas(int *mas1, int *mas2, int n){
	for(int i = 0; i != n; ++i){
		mas1[i] = mas2[i]; 
	}
}

// {----ОСНОВНЫЕ ФУНКЦИИ----} 

//1. Сортировка выбором
void SelSort(int *mas, int len_mas){
	for (int i = 0; i != len_mas; ++i){
		int pos = i;	
		for (int j = i + 1; j != len_mas; ++j){
			if(mas[j] < mas[pos]){
				pos = j;
				}	
		}	
	swap(&mas[pos], &mas[i]);
	}
	
	PrintMas(mas, len_mas);
}

//2. Пузырьковая сортировка
void BubbleSort(int *mas, int len_mas){
	for(int i = 0; i < len_mas; ++i){
		for(int j = i; j < len_mas; ++j){
			if(mas[i] > mas[j]){
				swap(&mas[i], &mas[j]);
			}
		}
	}
	PrintMas(mas, len_mas);
}

//3. Сортировка Шелла
void ShellSort(int *mas, int len_mas){
	int step, i, j;
	for (step = len_mas / 2; step > 0; step /= 2)
		for (i = step; i < len_mas; i++) 
			for (j = i - step; j >= 0 && mas[j] > mas[j + step]; j -= step)
				swap(&mas[j], &mas[j+step]);
				
	PrintMas(mas, len_mas);		
}

//4. Сортировка вставками
void InsertionSort(int *mas, int len_mas){
	int next, current;
	for (int i = 1; i < len_mas; i++){   
        	next = mas[i];
        	current = i - 1;        
        	while(current >= 0 && mas[current] > next){
            		mas[current+1] = mas[current];
            		current = current - 1;
 			}			
        	mas[current+1] = next;       	
    }
    PrintMas(mas, len_mas);
}

//Указатель на функцию
void Sorting( void (*Sort)(int *mas, int len_mas), int *mas, int len_mas){
	Sort(mas, len_mas);
}

