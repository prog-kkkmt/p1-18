#include <stdio.h>
#define LEN 30

/**
type ñòðîêà=packed array[1..15] of char;
âåðøèíà=record íàçâàíèå:ñòðîêà
âûñîòà: 1000...9999 end,
ñïèñîê=array[1..30] of âåðøèíà
îïèñàòü ïðîöåäóðó ÑàìàÿÂûñîêàÿ(C), ïå÷àòàþùóþ íàçâàíèå ñàìîé âûñîêîé âåðøèíû èç âïèñêà Ñ.
*/

/**
Ñïèñîê:
äîáàâèòü
óäàëèòü
ïå÷àòàòü
çàãðóçèòü
ñîõðàíèòü
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
    printf("1. print string", "2. print Higth");
    scanf("%d", &i);
    switch (i)
    {
        case 1: printf("%s", str.string);
        case 2: printf("%s", str.higth);
    }
    printf("%s", str.string);
}

void menu(FILE *file, FILE *fs)
{
    printf("1. Download\n");
    printf("2. SaveOnFile\n");
    printf("3. Remove\n");
    printf("4. Print\n");
    printf("5. exit\n");
    int numbe_function, index;
    struct string_and_higth str;
    while (1)
    {
        scanf("%d", &numbe_function);
        switch (numbe_function)
        {
            case 1: downloadString(str); break;
            case 2: saveStringOnFile(str, &find_vershin); break;
            case 3: scanf("%d", &index); RemoveElem(str, &index); break;
            case 4: printString(str); break;
            case 5: fclose(file); fclose(fs); break;
        }
    }
}

int main()
{
    FILE *file = fopen("text.txt", "r");
    FILE *fs = fopen("fs.txt", "w");
    menu(file, fs);
    //struct string_and_higth str;
    //downloadString(str);
    return 0;

}
