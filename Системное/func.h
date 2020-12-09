#ifndef FFILE_H
#define FFILE_H

	#ifdef __cplusplus
	extern "C"
	#endif

#define LEN 50
#define LEND 100

//Данные пользователя
struct Menu{
	char name[LEN];	//Имя меню
	char option[LEND][LEND];	//Опции меню
	int num_op;	//Кол-во опций
};
//!!!!!!!!!!!!!!!!!!

int show_dir_content(char *path);

int creatMenu(struct Menu menu[], char* file_menu, int num_users);

void printMenuName(struct Menu menu[], int num_menu);
void printMenuOption(struct Menu menu[], int index);
void printText(char *file_name);

#endif
