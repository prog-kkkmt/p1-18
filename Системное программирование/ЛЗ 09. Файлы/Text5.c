#include <stdio.h>
#defien LEN 100

int main()
{
    FILE *file = fopen("test.txt", "wa");
    char string[LEN];
    gets(string);
    int i;
    for (i = 0; string[i] != '\0'; ++i)
    {

    }
    return 0;
}
