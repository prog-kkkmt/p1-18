#include <stdio.h>
#define M 5
#define N 4
/**
Дана матрица размера M × N. Вывести ее элементы, расположенные в строках с четными номерами (2, 4, …).
Вывод элементов производить по строкам, условный оператор не использовать.
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
        for (j = 0; j < N; j+=2)
        {
            printf("%d\t", matrix[i][j]);
        }
        printf("\n");
    }
    return 0;
}
