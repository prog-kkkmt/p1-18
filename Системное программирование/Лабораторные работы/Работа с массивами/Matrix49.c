#include <stdio.h>
#include <stdlib.h>
#define M 4
#define N 4
/**
Дана квадратная матрица A порядка M. Найти сумму элементов ее главной диагонали, т. е. диагонали, содержащей следующие элементы:
A1,1,    A2,2,    A3,3,    …,    AM,M.
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

void swap(int a, int b)
{
    int temp = a;
    a = b;
    b = temp;
}

int main()
{
    int i, j, min_el = 1000000, index_min_j, max_el = -100000, index_max_j, temp;
    int matrix[M][N];
    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            matrix[i][j] = rand() % 10 + 1;
        }
    }

    //min_el = matrix[0][0]; max_el = matrix[0][0];

    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            if (matrix[i][j] > max_el)
            {
                max_el = matrix[i][j];
                index_max_j = j;
            }
            else if (matrix[i][j] < min_el)
            {
                min_el = matrix[i][j];
                index_min_j = j;
            }
        }
        swap(matrix[i][index_max_j], matrix[i][index_min_j]);

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
