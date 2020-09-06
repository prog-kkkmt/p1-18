/**
Описать комбинированный тип для представления  адреса (город, улица, дом, квартира)

	Герасимов Дмитрий П1-18
*/

#include <stdio.h>
#define LEN 100
#define MAXX 1000

struct Adres{
	char town[LEN];
	char street[LEN];
	char home[LEN];
	char flat[LEN];
};
typedef struct Adres Adres;

void add(Adres *mas_Adres, unsigned *size_mas);
void del(Adres *mas_Adres, unsigned *size_mas);
void print(Adres *mas_Adres, unsigned size_mas);
	void menu_print();
void download(Adres *mas_Adres, unsigned *size_mas);
void save(Adres *mas_Adres, unsigned size_mas);

void menu(){
	printf("\n");
	printf("1.Add\n");
	printf("2.Del\n");
	printf("3.Print\n");
	printf("4.Download\n");
	printf("5.Save\n");
	printf("0.Exit\n");
	printf("\n");
}

int main(){
	Adres mas_Adres[MAXX];

	int otvet = -1;
	unsigned size_mas = 0;
	while (otvet){
		menu();
		scanf("%d", &otvet);
		if(otvet == 1)
			add(mas_Adres, &size_mas);
		else if(otvet == 2)
			del(mas_Adres, &size_mas);
		else if(otvet == 3)
			print(mas_Adres, size_mas);
		else if(otvet == 4)
			download(mas_Adres, &size_mas);
		else if(otvet == 5)
			save(mas_Adres, size_mas);		
		else if (otvet != 0)
			printf("Error\n");
	}
	
	printf("\nКак говорил Император Ель, династии Цинь:\n");
	printf("\"Я устал. Я мухожук\"\n\n");
	
	return 0;
}

//Функция добавления элементов в массив
void add(Adres *mas_Adres, unsigned *size_mas){
	printf("\n");
	printf("Input town: ");
	scanf("%s", mas_Adres[*size_mas].town);
	printf("Input street: ");
	printf("Luck\n");
	scanf("%s", mas_Adres[*size_mas].street);
	printf("Input home: ");
	scanf("%s", mas_Adres[*size_mas].home);
	printf("Input flat: ");
	scanf("%s", mas_Adres[*size_mas].flat);
	printf("\n");
	
	++(*size_mas);
}

//Функция удаления элементов из массив
void del(Adres *mas_Adres, unsigned *size_mas){
	unsigned num = -1;
	printf("Input number string: ");
	scanf("%d", &num);
	if (num <= 0 || num > *size_mas)
		printf("Error\n");
	else{
		--num;
		for (unsigned i = num; i != *size_mas; ++i)
			mas_Adres[i] = mas_Adres[i+1];
	
		printf("Luck\n");	
		--(*size_mas);
	}
}

//Функция вывода элементов из массив
void print(Adres *mas_Adres, unsigned size_mas){
	int otvet_print = -1;
	while (otvet_print){
		menu_print();
		scanf("%d", &otvet_print);
		if (otvet_print == 1)
			for (unsigned i = 0; i != size_mas; ++i)
				printf("%d. %s\n", i + 1, mas_Adres[i].town);
		else if (otvet_print == 2)
			for (unsigned i = 0; i != size_mas; ++i)
				printf("%d. %s\n", i + 1, mas_Adres[i].street);
		else if (otvet_print == 3)
			for (unsigned i = 0; i != size_mas; ++i)
				printf("%d. %s\n", i + 1, mas_Adres[i].home);
		else if (otvet_print == 4)
			for (unsigned i = 0; i != size_mas; ++i)
				printf("%d. %s\n", i + 1, mas_Adres[i].flat);
		else if (otvet_print == 5)
			for (unsigned i = 0; i != size_mas; ++i)
				printf("%s\t%s\t%s\t%s\n", mas_Adres[i].town, mas_Adres[i].street, mas_Adres[i].home, mas_Adres[i].flat);
		else if (otvet_print != 0)
			printf("Error\n");
		
	}
}
//Меню для принта
void menu_print(){
	printf("\n");
	printf("1.Print cities\n");
	printf("2.Print streets\n");
	printf("3.Print homes\n");
	printf("4.Print apartments\n");
	printf("5.Print all\n");
	printf("0.Exit\n");
	printf("\n");
}

//Функция скачивания элементов из файла в массив
void download(Adres *mas_Adres, unsigned *size_mas){
	FILE *file = fopen("text.txt", "r");
	for (int i = 0; fscanf(file, "%s%s%s%s", mas_Adres[i].town, mas_Adres[i].street, mas_Adres[i].home, mas_Adres[i].flat) != EOF; ++i)
		++(*size_mas);
	printf("Luck\n");
	fclose(file);
}

//Функция сохраняюшая все элементы массива в файл
void save(Adres *mas_Adres, unsigned size_mas){
	FILE *file = fopen("text.txt", "w");
	for (unsigned i = 0; i != size_mas; ++i)
		fprintf(file, "%s\t%s\t%s\t%s\n", mas_Adres[i].town, mas_Adres[i].street, mas_Adres[i].home, mas_Adres[i].flat);
		
	printf("Luck\n");
	fclose(file);
}
