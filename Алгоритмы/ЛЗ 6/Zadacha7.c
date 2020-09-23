#include <stdio.h>

void Find(int k)
{
    int L, R, i, j, w, x;
    int a[k];
    while (L < R)
    {
        x = a[k]; i = L; j = R;
        do
        {
            while (a[i] < x)
                i = i + 1;
            while (x < a[j])
                j = j - 1;
            if (i < j)
            {
                w = a[i]; a[i] = a[j]; a[j] = w;
                i = i + 1; j = j - 1;
            }
        }
        while (i > j);
    }
    if (j < k)
    {
        L = i;
        printf("%d", L);
    }
    if (k < i)
    {
        R = j;
        printf("%d", L);
    }
}

int main()
{
    int k;
    scanf("%d", &k);
    Find(&k);
    return 0;
}
