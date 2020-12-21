#ifndef __SORTINGS_H__
#define __SORTINGS_H__

	#ifdef __cplusplus
	extern "C"
	#endif
	
//Печать массива
void PrintMenuSort();		//Меню сортировок
void MenuSort(int *mas, int *len_mas);	//Реализация меню сортировок

//Функции сортировок
void SelSort(int *mas, int len_mas);		//1. Сортировка выбором
void BubbleSort(int *mas, int len_mas);	//2. Пузырьковая сортировка
void ShellSort(int *mas, int len_mas);	//3. Сортировка Шелла
void InsertionSort(int *mas, int len_mas);	//4. Сортировка вставками

#endif
