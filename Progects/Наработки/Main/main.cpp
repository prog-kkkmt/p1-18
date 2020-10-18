#include <ncurses.h>
#include <iostream>
#include <string.h>

#include "func.h"

/**
	1. Закончить с выделением
	2. Переместить все функции в function.cpp
	3. Решить вопрос с окном где находится меню(50х20)
	4. Можно побробовать сделать все функции локальными
*/

void menu();

	const int width = 50;	// Ширина окна меню
	const int height = 20;	// Длина окна меню
	
	const int num_block_menu = 4;	//Колличество блоков в меню
	//Меню
	char text_menu[num_block_menu][10]= {
		"Run",
		"Save",
		"Setting",
		"Exit"
	};

void printBlock(int pos_cursor);
void select(int pos_cursor);

int main()
{
	if (!initscr())
	{
		fprintf(stderr, "Error initialising ncurses.\n");
		exit(1);
	}

	initscr();
	curs_set(0);
	refresh();
	noecho();	//Чтобы при записи буквы, буква не повторялась
	keypad(stdscr, TRUE);	//Включает возможности клавиатуры
	
	//Анимация в начале и черчение границ
	borderMenu();
	
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
		
		select(pos_cursor);	//Выделение текста
		
		if (ch == KEY_RIGHT || ch == '\n'){
			if (pos_cursor == num_block_menu - 1)
				break;
		}
	}
	
	endwin();
}

//Печать блока
void printBlock(int pos_cursor){
	mvaddstr(LINES/2 - (num_block_menu/2) + pos_cursor, ( COLS - strlen(text_menu[pos_cursor]) )/2, text_menu[pos_cursor]);
}

//Выделение блока (строки)
void select(int pos_cursor){
	size_t len_str_i = strlen(text_menu[pos_cursor]);	//Длина строки
	for (size_t j = 0; j != width-2; ++j){
		//Определение позиции блока
		move(LINES/2 + pos_cursor - (num_block_menu/2), (COLS - width) / 2 + j + 1);
		
		if (j >= len_str_i)
			addch(' ' | A_STANDOUT);
		else
			addch(text_menu[pos_cursor][j] | A_STANDOUT);
	}
}
