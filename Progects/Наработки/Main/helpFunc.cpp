#include <ncurses.h>
#include <iostream>
#include <string.h>
#include <unistd.h>

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

//Блок = строка. Например, если pos_cursor = 0, то блок = "Run"
//Печать блока
void printBlock(int pos_cursor, const int WIDTH_WIN, const int NUM_BLOCK_MENU, char text_menu[]){
	size_t len_str = strlen(text_menu);	//Длина блока

	size_t y = LINES/2 - (NUM_BLOCK_MENU / 2) + pos_cursor;	//Номер строки блока
	size_t x = (COLS - len_str)/2;	//Номер столбца начала блока
	
	size_t win_start = (COLS - WIDTH_WIN) / 2;	//Позиция начала win
	size_t win_end = win_start + WIDTH_WIN;	//Позиция конца win
	
	//Печать пробелов до блока
	for (size_t i = win_start + 1; i != x; ++i)
		mvaddch(y, i, ' ');
		
	//Печать блока
	mvaddstr(y, x, text_menu);
	
	//Печать пробелов после блока
	for (size_t i = x + len_str; i != win_end - 1; ++i)
		mvaddch(y, i, ' ');
}

//Выделение блока (строки)
void selectBlock(int pos_cursor, const int WIDTH_WIN, const int NUM_BLOCK_MENU, char text_menu[]){
	size_t len_str = strlen(text_menu);	//Длина блока

	size_t y = LINES/2 - (NUM_BLOCK_MENU / 2) + pos_cursor;	//Номер строки блока
	size_t x = (COLS - len_str)/2;	//Номер столбца начала блока
	
	size_t win_start = (COLS - WIDTH_WIN) / 2;	//Позиция начала win
	size_t win_end = win_start + WIDTH_WIN;	//Позиция конца win
	
	//Печать пробелов до блока
	for (size_t i = win_start + 1; i != x; ++i)
		mvaddch(y, i, ' '| A_STANDOUT);
	
	//Печать блока	
	size_t index = 0;
	for (size_t i = x; i != x + len_str; ++i){
		mvaddch(y, i, text_menu[index]| A_STANDOUT);
		++index;
	}
	
	//Печать пробелов после блока
	for (size_t i = x + len_str; i != win_end - 1; ++i)
		mvaddch(y, i, ' ' | A_STANDOUT);
}

//Навигация
void navigation(int ch, int &pos_cursor, const int NUM_BLOCK_MENU){
	if (ch == KEY_DOWN){
		++pos_cursor;
		if (pos_cursor == NUM_BLOCK_MENU)
			pos_cursor = 0;
	}
	else if (ch == KEY_UP){
		--pos_cursor;
		if (pos_cursor == -1)
			pos_cursor = NUM_BLOCK_MENU - 1;
	}
}
