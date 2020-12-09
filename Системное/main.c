#include <stdio.h>
#include <string.h>

#include "func.h"

#define LEN 50
#define LEND 100
#define MAXX 1000
char archive_file[LEND][MAXX];	//Имена всех файлов в катологе

int num_plans = 2;	//Кол-во того что мы ищем в меню (я русский)
char plans_menu[LEN][LEN] = {"Лекция", "ЛЗ"};	//Что искать в меню

int main(){
	//Узнаем все файлы
	char path[] = ".";	//путь
	int num_users = show_dir_content(path);	//Получаем все имена файлов и узнаем их кол-во

	//Формируем меню
	struct Menu menu[LEN];
	
	char file_menu[] = "menu";
	int num_menu = creatMenu(menu, file_menu, num_users);
	
	int n = -1;	//Ответ пользователя
	while (n){
		printMenuName(menu, num_menu);
		
		scanf("%d", &n);
		if (n != 0){
			int n1 = -1;
			while (n1){
				printMenuOption(menu, n);
				scanf("%d", &n1);
				
				if (n1 > 0 && n1 <= menu[n].num_op){
					printText(menu[n].option[n1-1]);
				}
			}
		}
	}
	
	return 0;
}
