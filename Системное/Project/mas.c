#include <stdio.h>
#include <stdlib.h>

#define LEN 35	//Для имени файла
#define MAXX 100000

#include "mas.h"

//Меню массива
void PrintMenuMas(){
	printf("\n");
	printf("0. Назад\n");
	printf("1. Ввод массива через консоль\n");
	printf("2. Ввод массива через файл\n");
	printf("3. Сгенерировать массив со случайными значениям\n");
	printf("4. Сгенерировать файл с случайными значениями\n");
	printf("5. Сгенерировать файл с пользовательскими значениями\n");
	printf("6. Вывод массива в консоль\n");
	printf("7. Вывод массива в файл\n");
	printf("\n");
}

//Реализация меню массива
void MenuMas(int *mas, int *len_mas){
	int n = -1;
	while(n != 0){
		PrintMenuMas();
		printf(">> ");
		scanf("%d", &n);
		printf("\n");
		
		//1. Ввод массива через консоль
		if (n == 1){
			printf("Введите размер массива:\n");
			printf(">> ");
			scanf("%d", &*len_mas);
			InputMas(mas, *len_mas);
		}
		
		//2. Ввод массива через файл
		else if (n == 2){
			fInputMas(mas, &*len_mas);
		}
		
		//3. Генерация массива со случайными значениям
		else if (n == 3){
			InputRandMas(mas, &*len_mas);
		}
		
		//4. Сгенерировать файл с случайными значениями
		else if (n == 4){
			InputRandFile();
		}
		
		//5. Сгенерировать файл с пользовательскими значениями
		else if (n == 5){
			InputFile();
		}
		
		//6. Вывод массива в консоль
		else if (n == 6){
			PrintMas(mas, *len_mas);
		}
		
		//7. Вывод массива в файл
		else if (n == 7){
			fPrintMas(mas, *len_mas);
		}
	}
}

//1. Ввод массива через консоль
void InputMas(int *mas, int n){
	printf("Введите массив:\n");
	printf(">> ");
	for (int i = 0; i != n; ++i)
		scanf("%d", &mas[i]);
}

//2. Ввод массива через файл
void fInputMas(int *mas, int *n){
	//Ввод имени файла
	char name_file[LEN];
	printf("Введите имя файла:\n");
	printf(">> ");
	scanf("%s", name_file);
	FILE *fin = fopen(name_file, "r");
	
	//Проверка файл на открытие
	if (fin == NULL){
		printf("ERR\n");
		return;
	}
	printf("Completed\n");
	//Сканируем файл
	int *newmas = (int*)malloc(MAXX+1);	//Массив в который запишем все данные из файла
	int len_newmas;
	for (len_newmas = 0; fscanf(fin, "%d", &newmas[len_newmas]) != EOF; ++len_newmas)	//Копируем данные файла
		;
	fclose(fin);
	
	free(mas); //Очищаем массив
	*n = len_newmas;	//Новый размер массива
	mas = (int*)malloc(*n+1);	//Выделяем память массиву
	//Копируем данные из newmas в mas
	for (int i = 0; i != *n; ++i)
		mas[i] = newmas[i];
		
	free(newmas);	//Очищаем newmas
	printf("Completed\n");
}

//3. Генерация массива со случайными значениям
void InputRandMas(int *mas, int *n){
	printf("Введите размер массива:\n");
	printf(">> ");
	scanf("%d", &*n);
	
	free(mas);
	mas = (int*)malloc(*n+1);	//Выделяем память массиву
	for (int i = 0; i != *n; ++i)
		mas[i] = rand() % 1000;
	printf("Completed\n");
}

//4. Сгенерировать файл с случайными значениями
void InputRandFile(){
	char name_file[LEN];
	printf("Введите имя файла:\n");
	printf(">> ");
	scanf("%s", name_file);
	FILE *fout = fopen(name_file, "w");
	
	printf("Введите количество элементов:\n");
	printf(">> ");
	int n;
	scanf("%d", &n);
	n++;
	for (int i = 1; i != n; ++i){
		fprintf(fout, "%d ", rand() % 1000);
		if (i % 50 == 0)
			fprintf(fout, "\n");
	}
	fclose(fout);
	printf("Completed\n");
}

//5. Сгенерировать файл с пользовательскими значениями
void InputFile(){
	char name_file[LEN];
	printf("Введите имя файла:\n");
	printf(">> ");
	scanf("%s", name_file);
	FILE *fout = fopen(name_file, "w");
	
	printf("Введите количество элементов:\n");
	printf(">> ");
	int n;
	scanf("%d", &n);
	n++;
	
	int num = 0;
	for (int i = 1; i != n; ++i){
		scanf("%d", &num);
		fprintf(fout, "%d ", num);
		if (i %= 50)
			fprintf(fout, "\n");
	}
	
	fclose(fout);
}

//6. Вывод массива в консоль
void PrintMas(int *mas, int n){
	for (int i = 0; i != n; i++)
		printf("%d ", mas[i]);
	printf("\n");
}

//7. Вывод массива в файл
void fPrintMas(int *mas, int n){
	char name_file[LEN];
	printf("Введите имя файла:\n");
	printf(">> ");
	scanf("%s", name_file);
	FILE *fout = fopen(name_file, "w");
	
	if (fout == NULL){
		printf("ERR\n");
		return;
	}
	printf("Completed\n");
	
	for (int i = 0; i != n; i++)
		fprintf(fout, "%d ", mas[i]);
	fprintf(fout, "\n");
	
	fclose(fout);
}





