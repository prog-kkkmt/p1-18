#include <stdio.h>
#define LEN 30

/**
type строка=packed array[1..15] of char;
вершина=record название:строка
высота: 1000...9999 end,
список=array[1..30] of вершина
описать процедуру СамаяВысокая(C), печатающую название самой высокой вершины из вписка С.
*/

/**
Список:
добавить
удалить
печатать
загрузить
сохранить
exit
*/

struct string_and_higth
{
    char string[LEN];
    char higth[LEN];
};

char find_vershin;
void veryHigth(char string[], char Higth[])
{
    int i;
    for (i = 0; i < LEN; i++)
    {
        find_vershin = Higth[i];
    }
    printf("%c", find_vershin);
}

void downloadString(struct string_and_higth str)
{
    FILE *file = fopen("text.txt", "r");
    fgets(str.string, sizeof(str.string), file);
}

void saveStringOnFile(struct string_and_higth str, char *find_vershin)
{
    FILE *fs = fopen("fs.txt", "w");
    fprintf(fs, "%s", find_vershin);
}

void RemoveElem(struct string_and_higth str, int * index)
{
    int i;
    for (int i = *index; i < LEN; i++)
    {
        str.string[i] = str.string[i + 1];
    }
}

void printString(struct string_and_higth str)
{
    int i;
    scanf("%d", &i);
    printf("1. print string", "2. print Higth");
    switch (i)
    {
        case 1: printf("%s", str.string);
        case 2: printf("%s", str.higth);
    }
    printf("%s", str.string);
}

void menu()
{
    printf("1. Download");
    printf("2. SaveOnFile");
    printf("3. Remove");
    printf("4. Print");
    printf("5. exit");
    int numbe_function, index;
    scanf("%d", &numbe_function);
    struct string_and_higth str;
    switch (numbe_function)
    {
        case 1: downloadString(str); break;
        case 2: saveStringOnFile(str, &find_vershin); break;
        case 3: RemoveElem(str, &index); break;
        case 4: printString(str); break;
        case 5: break;
    }
}

int main()
{
    menu();
    //struct string_and_higth str;
    //downloadString(str);
    return 0;

}
