/**
Дан массив размера N и целые числа K и L (1 ≤ K ≤ L ≤ N).
Найти сумму элементов массива с номерами от K до L включительно.
*/
#include <stdio.h>
int main()
{
    int n, k, l, i, summ = 0;
    scanf("%d %d %d", &n, &k, &l);
    int arr[n];
    for (i = 0; i < n; i++)
    {
        scanf("%d",&arr[i]);
    }
    for (; k <= l; k++)
    {
        summ += arr[k];
    }
    printf("%d", summ);
    return 0;
}
