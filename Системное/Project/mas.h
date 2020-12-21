#ifndef __MAS_H__
#define __MAS_H__

	#ifdef __cplusplus
	extern "C"
	#endif

void PrintMenuMas();	//Меню массива
void MenuMas(int *mas, int *n);	//Реализация меню массива

//Главное 
void InputMas(int *mas, int n);	//1. Ввод массива через консоль
void fInputMas(int *mas, int *n);	//2. Ввод массива через файл
void InputRandMas(int *mas, int *n);	//3. Генерация массива со случайными значениям
void InputRandFile();		//4. Сгенерировать файл с случайными значениями
void InputFile();		//5. Сгенерировать файл с пользовательскими значениями
void PrintMas(int *mas, int n);	//6. Вывод массива в консоль
void fPrintMas(int *mas, int n);	//7. Вывод массива в файл

#endif
