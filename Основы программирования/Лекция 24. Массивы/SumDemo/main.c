#include <stdio.h>
#include "sum.h"

int main()
{
    int a, b;
    scanf("%d%d", &a, &b);
    int c = sum(a, b);
    printf("c = %d\n", c);
    printf("Hello, comrades!\n");
    return 0;
}
