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
vector <vector<char>> mtrx = {
	{'R','u','n','\0'},
	{'S','a','v','e','\0'},
	{'S','e','t','t','i','n','g','\0'},
	{'E','x','i','t','\0'}
};

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

void selectAll(int block, size_t width){
	bool is_part_mtrx = 1;
	for(size_t i = 0; i != width; ++i){
		move(block, i);
		if (mtrx[block][i])
			is_part_mtrx = 0;
		if (is_part_mtrx)
			addch(mtrx[block][i] | A_STANDOUT);
		addch(' ' | A_STANDOUT);
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

	selectAll(block, width);
	//mvprintw(block, 1, ">");
	while(true){
		ch = getch();	
		if (ch == KEY_DOWN){
			mvprintw(block, 1, " ");
			++block;
			if (block == last_block)
				block = 0;
			selectAll(block, width);
			//mvprintw(block, 1, ">");
		}
		else if (ch == KEY_UP){
			mvprintw(block, 1, " ");
			--block;
			if (block == -1)
				block = last_block - 1;
			selectAll(block, width);
			//mvprintw(block, 1, ">");
		}
		else if (ch == KEY_RIGHT || ch == '\n'){
			if (block == last_block - 1)
				break;
		}
	}
	clear();	//очищаем окно
	endwin();	//закрываем окно
}
