#include <stdio.h>
#define LEN 100
#define LENALFAVIT 26

int main()
{
    int i;
    int arr[LENALFAVIT];
    for (i = 0; i < LENALFAVIT; i++)
    {
        arr[i] = 0;
    }
    int index;
    char string[LEN];
    gets(string);
    for (i = 0; string[i] != '\0'; i++)
    {
        index = string[i] - 'a';
        arr[index] += 1;
    }
    for (i = 0; i < LENALFAVIT; i++)
    {
        printf("%c %d\n", 'a' + i, arr[i]);
    }
    return 0;
}
