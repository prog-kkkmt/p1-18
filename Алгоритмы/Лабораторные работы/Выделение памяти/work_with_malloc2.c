#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

/**
С начала принимаем число n для того чтобы выделить память для n элементов строки
потом принимаем строку потом в цикле меняем строку из прописных в заглавные, а затем
выводим символы строки, а затем освобождаем память.
input
        abcd
output
        ABCD
*/

int main()
{
    int n, i;
    scanf("%d", &n);
    char *string = (char*)malloc(sizeof(char) * n);
    scanf("%s", string);
    for (i = 0; string[i] != '\0'; i++)
    {
        string[i] = toupper(string[i]);
        printf("%c", string[i]);
    }
    free(string);
    return 0;
}
