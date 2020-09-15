#include <stdio.h>
#include <stdlib.h>

/**
— начала принимаем число n дл€ того чтобы выделить пам€ть дл€ n элементов
потом считываем числа в цикле, а затем мы освобождаем ту пам€ть которую мы выделил.
*/

int main ()
{
    int n, i;
    scanf("%d", &n);
    int *arr = (int*)malloc(sizeof(int) * n);
    for (i = 0; i < n; i++)
    {
        scanf("%d", &arr[i]);
    }
    free(arr);
    return 0;
}
