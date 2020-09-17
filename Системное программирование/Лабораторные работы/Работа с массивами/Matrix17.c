#include <stdio.h>
#define M 5
#define N 4
/**
Дана матрица размера M × N и целое число K (1 ≤ K ≤ M).
Найти сумму и произведение элементов K-й строки данной матрицы.
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

int main()
{
    int i, j, k, summ = 0, prois = 1;
    int matrix[M][N];
    scanf("%d", &k);
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
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }

    for (j = 0; j < N; j++)
    {
            summ += matrix[k][j];
            prois = prois * matrix[k][j];
    }
    printf("%d %d", summ, prois);
    return 0;
}
