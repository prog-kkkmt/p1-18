#include <stdio.h>
#include <stdlib.h>
/**
���� ������� A � B ����������� ������� N. �������� ������� �� ���������� � �������
������� �������� ���������������� ������� A,
� ����� � �������� ���������������� ������� B.
�������� http://ptaskbook.com/ru/tasks/array.php
����� �. �. �������
17.09.20
*/

int main()
{
    int n, i, temp;
    scanf("%d", &n);
    int a[n]; int b[n];
    for (i = 0; i < n; i++)
    {
        a[i] = rand() % 10 + 1;
        b[i] = rand() % 10 + 1;
    }

    for (i = 0; i < n; i++)
    {
        temp = a[i];
        a[i] = b[i];
        b[i] = temp;
    }

    for (i = 0; i < n; i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
    for (i = 0; i < n; i++)
    {
        printf("%d ", b[i]);
    }
    return 0;
}
