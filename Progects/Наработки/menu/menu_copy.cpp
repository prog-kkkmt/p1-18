/**
Енто рисовалка
Группа: П1-18
Создатели: Герасимов Дмитрий, Груздев Роман
*/
#include <ncurses.h>
#include <iostream>
#include <vector>
#include <fstream>

using namespace std;

vector <vector<char>> canvas;	//Лист для 

//Границы (строим карту)
void Map(size_t width, size_t height){
	for (size_t i = 0; i != height; ++i){
		for (size_t j = 0; j != width; ++j){		/// i = высота; j = ширина
			mvprintw(0, j, "#");				///Верхняя граница
			mvprintw(height - 1, j, "#");		///Нижняя граница
			if (j == 0 || j == width - 1)		///Боковые границы
				mvprintw(i, j, "#");
		}
	}
}

//Запись управления/меню (снизу)
void Menu(){
	int i = 0;
	mvprintw(i++, 3, "Run");
	mvprintw(i++, 3, "Save");
	mvprintw(i++, 3, "Setting");
	mvprintw(i++, 3, "Exit");
}

void selectAll(size_t height, size_t width){
	for(int i = 0; i != width; ++i){

		addch(w_ch | A_STANDOUT);
	}
}

int main(){
	initscr();
	size_t height;	//высота окна
	size_t width;	//ширина окна

	getmaxyx(stdscr, height, width); //определяем размер экрана
	curs_set(0);	//Убиваем курсор
		noecho();	//Чтобы при записи буквы, буква не повторялась
		keypad(stdscr, TRUE);	//
	
	int block = 0;
	int last_block = 4;	//Количество строк в меню; Menu();
	int ch = 0;
	Menu();
	move(block, 0);
	mvprintw(block, 1, ">");
	while(true){
		ch = getch();	
		if (ch == KEY_DOWN){
			mvprintw(block, 1, " ");
			++block;
			if (block == last_block)
				block = 0;
			//selectAll();
			mvprintw(block, 1, ">");
		}
		else if (ch == KEY_UP){
			mvprintw(block, 1, " ");
			--block;
			if (block == -1)
				block = last_block - 1;
			//selectAll();
			mvprintw(block, 1, ">");
		}
		else if (ch == KEY_RIGHT){}
	}
	clear();	//очищаем окно
	endwin();	//закрываем окно
}
