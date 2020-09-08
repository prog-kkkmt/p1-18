#include <stdio.h>

int main()
{
    char str[15];
    gets(str);
    int found = 0;
    for (int i=0; i<15; i++)
        if (str[i]==' ') {
            printf("%d ", i);
            found = 1;
        }
    if (!found)
        printf("-");
    return 0;
}
