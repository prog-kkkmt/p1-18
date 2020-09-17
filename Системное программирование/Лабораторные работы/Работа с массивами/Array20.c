#include <stdio.h>

/**
Дан массив размера N и целые числа K и L (1 ≤ K ≤ L ≤ N).
Найти сумму элементов массива с номерами от K до L включительно.
Источник http://ptaskbook.com/ru/tasks/array.php
Автор М. Э. Абрамян
17.09.20
*/

int main()
{
    int n, k, l, i, summ;
    scanf("%d %d %d", &n, &k, &l);
    int arr[n];
    for (i = 0; i < n; i++)
    {
        arr[i] = i;
    }
    for (; k <= l; k++)
    {
        summ += arr[k];
    }
    printf("%d", summ);
    return 0;
}
