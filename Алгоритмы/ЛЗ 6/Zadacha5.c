#include <stdio.h>
#define T 4

int main()
{
    int i, j, k, m, t, s, n, x;
    int a[T];
    for (i = 0; i < T; i++)
    {
        scanf("%d", &a[i]);
    }
    for (m = 1; m < t; i++)
    {
        k = a[m]; s = -k;
        for (i = k + 1; i < n; i++)
        {
            x = a[i]; j = i - k;
            if (s == 0)
            {
                s = -k;
                s += 1;
                a[s] = x;
            }
        while (x < a[i])
        {
            a[j + k] = a[j]; j = i - k;
        }
        a[j + k] = x;
        }
    }
    return 0;
}
