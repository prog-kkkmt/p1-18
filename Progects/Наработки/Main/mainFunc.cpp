#include <ncurses.h>
#include <iostream>
#include <string.h>
#include <unistd.h>

#include "mainFunc.h"

extern const int width = 50;	// Ширина окна меню
extern const int height = 20;	// Длина окна меню
	
extern const int num_block_menu = 5;	//Колличество блоков в меню
//Меню
char text_menu[num_block_menu][15]= {
	"Start",
	"Draw field",
	"Save",
	"Setting",
	"Exit"
};
const int LEN = 20;

//Первоначальная анимация и создание границ
void borderMenu(){
	
	int offsetx = (COLS - width) / 2;
	int offsety = (LINES - height) / 2;

	WINDOW *win = newwin(height, width, offsety, offsetx);

	//Ввод никнейма
	char* username;
	mvprintw(LINES / 2 - 2, COLS / 2 - LEN + 2, "Enter name :  ");
	scanw("%s", &username);

	//Анимация перед чертением
	int s_win = COLS  * LINES;	// Площадь консоли
	//animation(s_win);
	int sleep_step = 1000;
	if (s_win / 1680){
		int step = s_win / 1680;
		for (int i = 0; i != step; ++i)
			sleep_step -= 150;
		if (sleep_step < 100)
			sleep_step = 100;
	}
	char zero_or_one = 0;
	while (s_win--){
		zero_or_one = s_win % 2 + '0';
		mvaddch(rand() % LINES, rand() % COLS, zero_or_one);
		//mvaddch(rand() % LINES, rand() % COLS, 'o');
		refresh();
		usleep(sleep_step);	//1 second = 1.000.000
	}

	//Чертим границы
	box(win, 0, 0);

	wrefresh(win);
	delwin(win);
}

//Вывод имени игры
void nameGame(){
	char name[] = "Snake";
	size_t len_str = strlen(name);
	size_t y = (LINES - height) / 2 + 3;
	size_t x = (COLS - len_str) / 2;
	for (size_t i = 0; i != len_str; ++i)
		mvaddch(y, x + i, name[i] | A_BOLD);
}

/*
//Анимация
//	Передаём площадь экрана
void animation(int s_win){
	int sleep_step = 1000;
	if (s_win / 1680){
		int step = s_win / 1680;
		for (int i = 0; i != step; ++i)
			sleep_step -= 150;
		if (sleep_step < 100)
			sleep_step = 100;
	}
	char zero_or_one = 0;
	while (s_win--){
		zero_or_one = s_win % 2 + '0';
		mvaddch(rand() % LINES, rand() % COLS, zero_or_one);
		//mvaddch(rand() % LINES, rand() % COLS, 'o');
		refresh();
		usleep(sleep_step);	//1 second = 1.000.000
	}
}
*/

//Блок = строка. Например, если pos_cursor = 0, то блок = "Run"
//Печать блока
void printBlock(int pos_cursor){
	size_t len_str = strlen(text_menu[pos_cursor]);	//Длина блока

	size_t y = LINES/2 - (num_block_menu/2) + pos_cursor;	//Номер строки блока
	size_t x = (COLS - len_str)/2;	//Номер столбца начала блока
	
	size_t win_start = (COLS - width) / 2;	//Позиция начала win
	size_t win_end = win_start + width;	//Позиция конца win
	
	//Печать пробелов до блока
	for (size_t i = win_start + 1; i != x; ++i)
		mvaddch(y, i, ' ');
		
	//Печать блока
	mvaddstr(y, x, text_menu[pos_cursor]);
	
	//Печать пробелов после блока
	for (size_t i = x + len_str; i != win_end - 1; ++i)
		mvaddch(y, i, ' ');
}

//Выделение блока (строки)
void select(int pos_cursor){
	size_t len_str = strlen(text_menu[pos_cursor]);	//Длина блока

	size_t y = LINES/2 - (num_block_menu/2) + pos_cursor;	//Номер строки блока
	size_t x = (COLS - len_str)/2;	//Номер столбца начала блока
	
	size_t win_start = (COLS - width) / 2;	//Позиция начала win
	size_t win_end = win_start + width;	//Позиция конца win
	
	//Печать пробелов до блока
	for (size_t i = win_start + 1; i != x; ++i)
		mvaddch(y, i, ' '| A_STANDOUT);
	
	//Печать блока	
	size_t index = 0;
	for (size_t i = x; i != x + len_str; ++i){
		mvaddch(y, i, text_menu[pos_cursor][index]| A_STANDOUT);
		++index;
	}
	
	//Печать пробелов после блока
	for (size_t i = x + len_str; i != win_end - 1; ++i)
		mvaddch(y, i, ' ' | A_STANDOUT);
}
