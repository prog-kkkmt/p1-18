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
/*
void selectAll(size_t height, size_t width){
	for(int i = 0; i != width; ++i){

		addch(w_ch | A_STANDOUT);
	}
}
*/

int main(){
	/*
	cout << "Добро пожаловать в рисовалку! Хотите начать творить?" << endl
		<< "1. Да" << endl
		<< "0. Нет" << endl;
	bool start;
	cout << "Ваш выбор: ";
	cin >> start;
	*/
	initscr();
	size_t height;	//высота окна
	size_t width;	//ширина окна

	getmaxyx(stdscr, height, width); //определяем размер экрана
	
	int block = 0;
	int last_block = 4;	//Количество строк в меню; Menu();
	int ch = 0;
	Menu();
	move(block, 1);
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
			if (block == 0)
				block = last_block - 1;
			//selectAll();
			mvprintw(block, 1, ">");
		}
		else if (ch == KEY_RIGHT){}
	}
	clear();	//очищаем окно
	endwin();	//закрываем окно

/*
	if (start){
		//Имя файла
		string name_fout = "output.txt";
		cout << "Имя файла вывода: ";
		cin >> name_fout;
		ofstream fout = ofstream(name_fout);

		//Имя пользователя
		string name_user;
		cout << "Имя художника: ";
		cin >> name_user;

		//Имя произведения
		string name_canvas;
		cout << "Название вашего произведения искусства: ";
		cin >> name_canvas;

		initscr();	//Открываем экран
		
		size_t height;	//высота окна
		size_t width;	//ширина окна

		getmaxyx(stdscr, height, width); //определяем размер экрана
		height -= 10;	//оставляем место для нижней меню
		curs_set(0);	//Убиваем курсор
		noecho();	//Чтобы при записи буквы, буква не повторялась
		keypad(stdscr, TRUE);	//

		//Для записи с центра карты
		size_t x = width / 2 - 1;		//координата строчки
		size_t y = height / 2 - 1;	//координата столбца
		
		//Инициализация 2мерного массива
		canvas = vector <vector<char>>(height, vector<char> (width, ' ') );

	    	Map(width, height);	//Границы (строим карту) 
	    	
	    	
		//Символы печати
	    	int ch = 0;	//Символ для навигации
	    	char w_ch = 'X';	//Символ для печати

		move(y, x);
		addch(w_ch | A_STANDOUT);
	   	while (true){
			ch = getch();	//ввод символа (для навигации и печати).
			
			//Навигация
			if (ch == KEY_DOWN){
				mvprintw(y, x, "%c", w_ch);
				y++;
			}
			else if (ch == KEY_UP){
				mvprintw(y, x, "%c", w_ch);
				y--;
			}
			else if (ch == KEY_LEFT){
				mvprintw(y, x, "%c", w_ch);
				x--;
			}
			else if (ch == KEY_RIGHT){
				mvprintw(y, x, "%c", w_ch);			
				x++;
			}
			else if (ch == '\n')
				break;
			
			//Запись после передвижения
			else if (ch == '\t'){
				
			}
			else if (ch != '\t'){
				w_ch = ch;
			}
			
			//Чтоб кусор не вышел за предел границы
			if (x == width-1)
				--x;
			else if (x == 0)
				++x;
			else if (y == height-1)
				--y;
			else if (y == 0)
				++y;
				
				
			//Печать активного символа (место где находится курсор)
			move(y, x);
			addch(w_ch | A_STANDOUT);

			canvas[y][x] = w_ch;
		}
		
		for (size_t i = 0; i != height; ++i){
			for (size_t j = 0; j != width; ++j){
				fout << canvas[i][j];
			}
			fout << endl;
		}
		fout << '\t' << "Name: " << name_user << endl;
		fout << '\t' << "Name canvas: " << name_canvas << endl;

		clear();	//очищаем окно
		endwin();	//закрываем окно
	}
*/
	cout << endl << "Покеч" << endl;
	

	return 0;
}
