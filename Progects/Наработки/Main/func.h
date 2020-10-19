#ifndef FUNC_H
#define FUNC_H

void borderMenu();	//Первоначальная анимация и создание границ
void nameGame();	//Запись имени игры

//Блок = строка. Например, если pos_cursor = 0, то блок = "Run"
void printBlock(int pos_cursor);	//Печать блока
void select(int pos_cursor);	//Выделение блока

//Главный функционал

void drawField();	//2. Нарисовать поле для змейки

#endif
