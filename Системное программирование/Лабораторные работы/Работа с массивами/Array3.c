#include <stdio.h>
/**
���� ����� ����� N (> 1), � ����� ������ ���� A � �������� D �������������� ����������.
������������ � ������� ������ ������� N, ���������� N ������ ������ ������ ����������:
A,    A + D,    A + 2�D,    A + 3�D,    � .
�������� http://ptaskbook.com/ru/tasks/array.php
����� �. �. �������
17.09.20
*/

int main()
{
    int n, i, a, d;
    scanf("%d %d %d", &n, &a, &d);
    int arr[n];
    for (i = 0; i < n; i++)
    {
        arr[i] = a + i * d;
    }
    for (i = 0; i < n; i++)
    {
        printf("%d", arr[i]);
    }
    return 0;
}
