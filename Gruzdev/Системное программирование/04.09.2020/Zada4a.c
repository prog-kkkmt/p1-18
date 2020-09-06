/** Груздев Роман, П1-18
type строки = packed array[1..15] of char;
    вершина = record название: строка
                    высота: 1000..9999
                end;
    список = array [1//20] of вершина;
Описать процедуру СамаяВысокая(С), печатающую название самой высокой вершины из списка С.
*/


#include <stdio.h>
#include <string.h>
#define LEN 15  // Максимальная длина названия вершины
#define MAX 5  // Максимальное кол-во элементов в массиве по условию задачи


struct vertex{
    char name[LEN];
    int height;
};

typedef struct vertex vertex;

// Менюшка
void menu(){
    printf("Enter the number: \n");
    printf("0. Exit \n");
    printf("1. Add \n");
    printf("2. Delete \n");
    printf("3. Save \n");
    printf("4. Download \n");
    printf("5. Print \n");
    printf("6. Over height \n");
}

// 1 Добавление записи в массив
void add(vertex *arr, int *n, int *emp){
    if(*n == MAX)
        printf("An array can't contain more than %d elements\n", MAX);
    else{
	printf("\n");
	printf("Input name: ");
	scanf("%s", arr[*n].name);
	while(strlen(arr[*n].name) > LEN){
        printf("Wrong! The name has a maximum of 15 characters!\n");
        printf("Input name: ");
        scanf("%s", arr[*n].name);
	}
	printf("Input height: ");
	scanf("%d", &arr[*n].height);
	++(*n);
	*emp = 1;
    }
}

// 2 Удаление определённой записи из массива
void del(vertex *arr, int *n, int *emp){
    if(*emp == 0)
        printf("Array is Empty!\n");
    else{
        if(*n == 1){
                int numb = -1;
                printf("Input number record: ");
                scanf("%d", &numb);
            if (numb <= 0 || numb > *n)
                printf("Incorrect value :c\n");
        else{
            for (int i = numb - 1; i != *n; i++)
                arr[i] = arr[i+1];
            --(*n);}
            *emp = 0;
	}
       else{
    int numb = -1;
	printf("Input number record: ");
	scanf("%d", &numb);
	if (numb <= 0 || numb > *n)
        printf("Incorrect value :c\n");
    else{
	for (int i = numb - 1; i != *n; i++)
		arr[i] = arr[i+1];
	--(*n);}
        }
    }
}

// 3 Сохранение в файл
void save(vertex *arr, int n, int emp){
    if(emp == 0)
        printf("Array is Empty!\n");
    else{
    FILE *file = fopen("text.txt","w");
        for(int i = 0; i != n; i++)
            fprintf(file,"%s %d\n", arr[i].name, arr[i].height);
    }
}    

// 4 Выгрузка данных из файла в массив
void download(vertex *arr, int *n, int *emp){
	FILE *file = fopen("text.txt", "r");
	
        *emp = 0;
	if(getc(file) == EOF)
        	printf("File is Emty!\n");
    	else{
    		fclose(file);
  		FILE *file = fopen("text.txt", "r");
		for (int i = 0; fscanf(file, "%s%d", arr[i].name, &arr[i].height) != EOF; i++){
			if(*n >= MAX) 
				break;
			++(*n);
	    		*emp = 1;
		}
		
	fclose(file);
	}
}

// 5 Печать всех записей из массива
void print(vertex *arr, int n, int emp){
    if(emp == 0)
        printf("Array is Empty!\n");
    else{
    for(int i = 0; i != n; i++)
        printf("%s : %d\n", arr[i].name, arr[i].height);
    }
}

// 6 Нахождение самой высокой вершины
void overHeight(vertex *arr, int n, int emp){
    if(emp == 0)
        printf("Array is Empty!\n");
    else{
    int max = arr[0].height, k = 0;
    for(int i = 0; i != n; i++)
        if(arr[i].height > max){
            max = arr[i].height;
            k = i;
        }
    printf("Over height vertex - %s\n", arr[k].name);
    }
}


int main(){
    int n = 0, emp = 0;
    struct vertex arr[MAX];
    int number = -1;

    while(number != 0){
        menu();
        scanf("%d", &number);


    switch(number){
        case 0:
            printf("Poke\n");
        break;
        case 1:
            add(arr, &n, &emp);
        break;
        case 2:
            del(arr, &n, &emp);
        break;
        case 3:
            save(arr, n, emp);
        break;
        case 4:
            download(arr, &n, &emp);
        break;
        case 5:
            print(arr, n, emp);
        break;
        case 6:
            overHeight(arr, n, emp);
        break;
        }

    }

    return 0;

    }
