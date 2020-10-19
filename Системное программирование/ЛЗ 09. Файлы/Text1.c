#include <stdio.h>

/** Дано имя файла и целые положительные числа N и K.
Создать текстовый файл с указанным именем и записать в него N строк,
каждая из которых состоит из K символов «*» (звездочка). */

int main()
{
    FILE *file = fopen("test.txt", "w");
    int n, m, k, i, j;
    char symbol = '*';
    scanf("%d %d", &n, &m);
    for (i = 0; i < n; ++i)
    {
        for (j = 0; j < m; ++j)
        {
            fprintf(file, "%c", symbol);
        }
        fprintf(file, "\n");
    }
    return 0;
}
