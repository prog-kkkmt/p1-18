#include <ncurses.h>
#include <iostream>

//Главные функции
#include "mainFunc.h"

/**
	1. Закончить с выделением
	2. Переместить все функции в function.cpp
	3. Решить вопрос с окном где находится меню(50х20)
	4. Можно побробовать сделать все функции локальными
*/

void menu();

	const int width = 50;	// Ширина окна меню
	const int height = 20;	// Длина окна меню
	
	const int num_block_menu = 5;	//Колличество блоков в меню

int main()
{
	if (!initscr())
	{
		fprintf(stderr, "Error initialising ncurses.\n");
		exit(1);
	}

	initscr();
	
	refresh();

	//Анимация в начале и черчение границ
	borderMenu();
	
	curs_set(0);
	noecho();	//Чтобы при записи буквы, буква не повторялась
	keypad(stdscr, TRUE);	//Включает возможности клавиатуры

	nameGame();
	
     //Выписывает все меню (Без какого-либо выделения)
	for (size_t i = 0; i != num_block_menu; ++i){
		printBlock(i);	//Печать блока
	}
		
	int pos_cursor = 0;	//Позиция курсора
	int ch = 0;	//Символ навигации
	
	select(pos_cursor);	//Выделение текста
	while(true){
		ch = getch();
		//Навигация
		if (ch == KEY_DOWN){
			printBlock(pos_cursor);	//Печать блока
			++pos_cursor;
			if (pos_cursor == num_block_menu)
				pos_cursor = 0;
		}
		else if (ch == KEY_UP){
			printBlock(pos_cursor);	//Печать блока
			--pos_cursor;
			if (pos_cursor == -1)
				pos_cursor = num_block_menu - 1;
		}
		
		select(pos_cursor);	//Выделение блока
		
		if (ch == KEY_RIGHT || ch == '\n'){
			if (pos_cursor == 1){}
			//2. Нарисовать поле для змейки
			if (pos_cursor == 2){
				//drawField();
			}
			if (pos_cursor == 3){}
			if (pos_cursor == 4){}
			if (pos_cursor == num_block_menu - 1)
				break;
		}
	}
	
	endwin();
}
