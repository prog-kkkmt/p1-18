#include <stdio.h>
/**
Дано целое число N (> 1), а также первый член A и разность D арифметической прогрессии.
Сформировать и вывести массив размера N, содержащий N первых членов данной прогрессии:
A,    A + D,    A + 2·D,    A + 3·D,    … .
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
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
