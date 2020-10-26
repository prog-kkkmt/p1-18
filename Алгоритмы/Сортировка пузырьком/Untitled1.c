#include <stdio.h>

void sortBubble(int *array, int n)
{
    int i, j, temp;
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
}

int main()
{
    int i, j, n;
    scanf("%d", &n);
    int array[n];
    for (i = 0; i < n; ++i)
    {
        scanf("%d", &array[i]);
    }
    sortBubble(array, n);
    for (i = 0; i < n; ++i)
    {
        printf("%d ", array[i]);
    }
    return 0;
}
