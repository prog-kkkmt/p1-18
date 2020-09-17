#include <stdio.h>
#define M 5
#define N 4
/**
Дана квадратная матрица A порядка M. Найти сумму элементов ее главной диагонали, т. е. диагонали, содержащей следующие элементы:
A1,1,    A2,2,    A3,3,    …,    AM,M.
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

int main()
{
    int i, j, summ = 0;
    int matrix[M][N];
    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            matrix[i][j] = (i+1) * 10;
        }
    }

    for (i = 0; i < M; i++)
    {
        for (j = 0; j < N; j++)
        {
            if (i == j)
            {
                summ += matrix[i][j];
            }
        }
    }
    printf("%d", summ);
    return 0;
}
