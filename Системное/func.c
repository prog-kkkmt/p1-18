#include <dirent.h>
#include <sys/stat.h>
#include <stdio.h>

#include "func.h"

#define LEN 50
#define LEND 100
#define MAXX 1000

extern char archive_file[MAXX][MAXX];

extern char plans_menu[LEN][LEN];	//Что искать в меню
extern int num_plans;	//Кол-во того что мы ищем в меню (я русский)

//Находит все файлы в катологе и возвращает их кол-во
int show_dir_content(char *path){
	DIR *d = opendir(path); // open the path
	int len = 0;
	
	// Если не смогли открыть папку
	if(d == NULL)
		return 0;

	struct dirent *dir;
	for (len = 0; (dir = readdir(d)); ++len)
		sprintf(archive_file[len], "%s", dir->d_name);
	
	closedir(d); // close the directory
	
	return len;
}

//Есть ли такой пункт в меню. Если есть вернет индекс, если нет то -1
int isOnMenu(char str[]){
	for (int i = 0; i != num_plans; ++i){
		int j;
		int count = 0;
		for (j = 0; plans_menu[i][j] != '\0'; ++j)
			if (str[j] == plans_menu[i][j])
				count++;
		if (count == j)
			return i;
	}
	
	return -1;
}


//Создать меню
int creatMenu(struct Menu menu[], char* file_menu, int num_users){
	int num_menu = 0;
	FILE *fmenu = fopen(file_menu, "r");	//Открываем файл-меню, для создания "каталогов"
	int ch = 0;	//Символ для чтения из файла
	
	//Считываем все меню
	for (int j = 0; (ch = getc(fmenu)) != EOF; ++j ){
		if (ch == '\n'){
			menu[num_menu].name[j] = '\0';
			num_menu++;
			j = -1;
		}
		else
			menu[num_menu].name[j] = ch;
	}
	fclose(fmenu);	// Закрываем файл-меню
	
	//Задаем кол-во опций
	for (int i = 1; i != num_menu; ++i)
		menu[i].num_op = 0;
	
	//Пропишим все опции 
	for (int i = 0; i != num_users; ++i){
		//Соответствует ли
		int index_menu = isOnMenu(archive_file[i]) + 1;
		if (index_menu != -1){
			for (int j = 0; archive_file[i][j] != '\0'; ++j)
				menu[index_menu].option[ menu[index_menu].num_op ][j] = archive_file[i][j];
			menu[index_menu].num_op++;
		}
	}

	return num_menu;
}

//Вывод глав меню
void printMenuName(struct Menu menu[], int num_menu){
	for (int i = 0; i != num_menu; ++i)
		printf("%d| %s\n", i, menu[i].name);
	printf("\n");
}


//Вывод опций меню
void printMenuOption(struct Menu menu[], int index){
	printf("%s\n", menu[index].name);
	
	printf("0| Назад\n");
	for (int i = 0; i != menu[index].num_op; ++i)
		printf("%d| %s\n", i+1, menu[index].option[i]);
	printf("\n");
}

void printText(char *file_name){
	printf("%s\n", file_name);

	FILE *fin = fopen(file_name, "r");
	int ch = 0;
	while ( (ch = getc(fin)) != EOF)
		printf("%c", ch);
	printf("\n");
	
	
	fclose(fin);
}





