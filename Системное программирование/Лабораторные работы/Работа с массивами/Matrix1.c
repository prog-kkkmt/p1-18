#include <stdio.h>
#define M 5
#define N 4
/**
Даны целые положительные числа M и N. Сформировать целочисленную матрицу размера M × N,
у которой все элементы I-й строки имеют значение 10·I (I = 1, …, M).
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

int main()
{
    int i, j;
    int matrix[M][N];
    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            matrix[i][j] = i * 10;
        }
    }
    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
    return 0;
}
