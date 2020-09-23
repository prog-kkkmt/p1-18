#include <stdio.h>

int main()
{
    int n = 10;
    int a[n];
    int i, j, x;
    for (i = 2; i < n; i++)
    {
        x = a[i]; a[0] = x; j = i - 1;
        while (x < a[j])
        {
            a[j + 1] = a[j]; j = i - 1;
        }
        a[j + 1] = x;
    }
    return 0;
}
