#include <stdio.h>
#define M 5
#define N 4
/**
���� ���������� ������� A ������� M. ����� ����� ��������� �� ������� ���������, �. �. ���������, ���������� ��������� ��������:
A1,1,    A2,2,    A3,3,    �,    AM,M.
�������� http://ptaskbook.com/ru/tasks/array.php
����� �. �. �������
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
