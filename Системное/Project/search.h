#ifndef __SEARCH_H__
#define __SEARCH_H__

	#ifdef __cplusplus
	extern "C"
	#endif

//Печать массива
void SearchMenu();

//Меню поисков
void PrintSearch(int *mas, int *len_mas);

// Функции поисков
void LiSearch(int *mas, int key, int len_mas);	//Линейный поиск
int BiSearch(int *mas, int key, int len_mas);		//Бинарный поиск

// Указатель на функцию
void Searching( int (*Search)(int *mas, int key, int len_mas), int *mas, int key, int len_mas);
#endif
