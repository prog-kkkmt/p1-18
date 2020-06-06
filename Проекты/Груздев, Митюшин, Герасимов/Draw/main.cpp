//Если скучно можете порисовать
#include <ncurses.h>
#include <iostream>

bool gameOver;
const unsigned short width = 40;	///Ширина
const unsigned short height = 20;	///Длина

void Map(){
	for (size_t i = 0; i != height; ++i){
		for (size_t j = 0; j != width; ++j){		/// i = высота; j = ширина
			mvprintw(0, j, "#");				///Верхняя граница
			mvprintw(height - 1, j, "#");		///Нижняя граница
			if (j == 0 || j == width - 1)		///Боковые границы
				mvprintw(i, j, "#");
		}
	}
}
void Menu(){
	mvprintw(7, 50, "Exit: x;");
	//mvprintw(8, 50, "Передвижение с печатью: стрелка в верх / вниз / вправо / влево;");
}

int main(){
	initscr();
	curs_set(0);
	noecho();
	keypad(stdscr, TRUE);

	bool gameOver = false;
	int x = width / 2 - 1;
	int y = height / 2 - 1;

    	Map();
	mvprintw(y, x, "X");
   	while (!gameOver){
		int ch = getch();
		if (ch == KEY_DOWN)  y++;
		else if (ch == KEY_UP)    y--;
		else if (ch == KEY_LEFT)  x--;
		else if (ch == KEY_RIGHT) x++;

		mvprintw(y, x, "X");
        
	}
	    clear();
	    refresh();
	    endwin();

	return 0;
}


