#include <stdio.h>
#include "stack.h"
#define LEN 100

int main()
{
	int n, i, j, nc = 0, number;
    float diametor, diam_for_compaz1, diam_for_compaz2;
	Stack stack;
	Stack *st = &stack;
	init(st);
	FILE *box1 = fopen("box1.txt", "r");
	FILE *box2 = fopen("box2.txt", "w");
	FILE *vibor = fopen("vibor.txt", "w");
	FILE *gilza = fopen("gilza.txt", "w");

	FILE *magazine = fopen("magazine.txt", "r");
	fscanf(magazine, "%*d %f %*d %f", &diam_for_compaz1, &diam_for_compaz2); //Берём два аргумента в качестве сравнения диаметра
	fclose(magazine);
	fscanf(box1, "%d", &n); // берём количество элементов из box1.txt
	for (i = 0; i < n; ++i)
	{
		fscanf(box1, "%d %f", &number, &diametor); //принимаем данные из файла box1.txt
		for (j = 0; j < stack.len_stack; ++j) //поиск похожего элемента в стеке
		{
			if (diametor == stack.stack[j]) //Если он найдётся то будет положен либо в стек, либо в box2.txt
			{
				++nc;
				break;
			}
		}
		if (nc == 0 && (diametor >= diam_for_compaz1 && diametor <= diam_for_compaz2))
		{
			fprintf(vibor, "%d, %f; ", number, diametor); //добавляем в файл vibor.txt виды диаметра фигурируюшие в box1.txt
		}

		if (diametor >= diam_for_compaz1 && diametor <= diam_for_compaz2)
		{
			push(st, diametor); //добавляем элемент в этек
			pushStackNumbers(st, number); //добавляем номер элемента в этек
			nc = 0;
		}
		else
		{
			nc = 0;
			fprintf(box2, "%d, %.2f; ", number, diametor); // патроны которые не подходят по диаметру кладуца в box2.txt
		}
	}
	for (i = stack.len_stack; i >= 0; --i)
	{
		fprintf(gilza, "%d, %.2f; ", stack.stack_numbers[i], stack.stack[i]); // выгружаем стек в файл gilza.txt
	}
	fclose(box1);
	fclose(box2);
	fclose(gilza);
	fclose(vibor);
	return 0;
}

