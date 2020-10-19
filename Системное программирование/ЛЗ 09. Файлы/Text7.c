#include <stdio.h>
#define LEN 100

int main()
{
    FILE *file = fopen("test.txt", "wr");
    char string[LEN]; char string2[LEN];
    gets(string2);
    while (fgets(string, LEN, file) != EOF)
    {

    }
    return 0;
}
