#include <ncurses.h>
#include <iostream>
#include <unistd.h>

#include "func.h"

//Первоначальная анимация и создание границ
void borderMenu(){
	
	
	const int width = 50;	// Ширина окна меню
	const int height = 20;	// Длина окна меню
	
	int offsetx = (COLS - width) / 2;
	int offsety = (LINES - height) / 2;

	WINDOW *win = newwin(height, width, offsety, offsetx);

	//Анимация перед чертением
	int s_win = COLS  * LINES;	// Площадь консоли
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
