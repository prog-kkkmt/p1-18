#include <stdio.h>

/**
Дан массив размера N. Вывести его элементы в обратном порядке.
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

int main()
{
    int n, i, a, d;
    scanf("%d", &n);
    int arr[n];
    for (i = 0; i < n; i++)
    {
        arr[i] = i;
    }
    --n;
    for (; n >= 0; n--)
    {
        printf("%d ", arr[n]);
    }
    return 0;
}
