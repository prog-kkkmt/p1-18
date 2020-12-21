#include <stdio.h>
//Меню сортировок
void sortMenu(){
	printf("0. Выход");
	printf("1. Сортировка выбором");
	printf("2. Пузырьковая сортировка");
	printf("3. Сортировка Шелла");
	printf("4. Сортировка вставками");
	printf("5. Изменение массива");
}

// Вывод сотировок
void printSort(){
	printf("\n");
	int n = -1;
	while(n != 0){
		sortMenu();
		printf(">>");
		scanf("%d", &n);
		if (n == 1){
			Selsort(int *mas, int len_mas);
		}
		
		else if (n == 2){
			BubbleSort(int *mas, int len_mas);
		}
		
		else if (n == 3){
			ShellSort(int *mas, int len_mas);
		}
		
		else if (n == 4){
			InsertionSort(int *mas, int len_mas);
		}
		
		else if (n == 5){
			
		}
	}
}

// обмен
void swap(int *a, int *b){
	int tmp = *a;
	*a = *b;
	*b = tmp; 
}

// Сортировка выбором
void SelSort(int *mas, int len_mas){
	int pos = i;
	for (int j = i + 1; j != len_mas; ++j){
		if(mas[j] < mas[pos]){
			pos = j;
			}	
}
	int t = mas[pos];
	mas[pos] = mas[i];
	mas[i] = t;
}

// Сортировка пузырьком
void BubbleSort(int *mas; int len_mas){
	for(int i = 0; i < len_mas - 2; ++i){
		for(int j = 0; j < len_mas - i - 2; ++j){
			if(mas[j] < mas[j + 1]){
				swap(&mas[j], &mas[j+1]);
			}
		}
	}
}

// Сортировка Шелла
void ShellSort(int *mas, int len_mas){
	int step, i, j, tmp;
	for (step = size / 2; step > 0; step /= 2)
		for (i = step; i < size; i++) 
			for (j = i - step; j >= 0 && mas[j] > mas[j + step]; j -= step){
				swap(mas[j], mas[j+step]);
			}
}

// Сортировка вставками
void InsertionSort(int *mas, int len_mas){
	int next, current;
	for (int i = 1; i < n; i++){   
        	next = mass[i];
        	current = i - 1;        
        	while(current >= 0 && mass[current] > next){
            		mass[current+1] = mass[current];
            		current = current - 1;
 			}			
        	mass[current+1] = next;
    }
}

