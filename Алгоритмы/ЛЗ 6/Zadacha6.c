#include <stdio.h>
#define LABEL 12

void Shift(int R, int L, int a[])
{
    int i, j, x;
label:
    i = L; j = 2 * L; x = a[L];
    while (j <= R)
    {
        if (j < R)
        {
            if (a[j] < a[j + 1])
                ++j;

            if (x >= a[j])
            {
                goto label;
            }
        }
    }
}

int main()
{

    return 0;
}
