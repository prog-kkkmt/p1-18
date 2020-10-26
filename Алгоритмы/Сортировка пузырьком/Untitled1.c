#include <stdio.h>

int main()
{
    int i, j, n, temp;
    scanf("%d", &n);
    int array[n];
    for (i = 0; i < n; ++i)
    {
        scanf("%d", &array[i]);
    }
    for (i = 0; i < n; ++i)
    {
        for (j = 0; j < n; ++j)
        {
            if (array[i] < array[j])
            {
                temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }
    for (i = 0; i < n; ++i)
    {
        printf("%d ", array[i]);
    }
    return 0;
}
