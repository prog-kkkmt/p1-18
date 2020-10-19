#include <stdio.h>

/**
 Дан текстовый файл. Вывести количество содержащихся в нем символов и строк
 (маркеры концов строк EOLN и конца файла EOF при подсчете количества символов не учитывать).
*/

int main()
{
    int nc;
    char symbol, c;
    FILE *file = fopen("test.txt", "r");
    while ((symbol = fgetc(file)) != EOF)
    {
        ++nc;
    }
    printf("%d", nc);
    return 0;
}
