
#include <stdio.h>
#define LEN 27
/**
Text2. ƒано им€ файла и целое число N (0 < N < 27). —оздать текстовый файл с указанным именем и записать
в него N строк: перва€ строка должна содержать строчную (т. е. маленькую) латинскую букву Ђaї, втора€ Ч
буквы Ђabї, треть€ Ч буквы
Ђabcї и т. д.; последн€€ строка должна содержать N начальных строчных латинских букв в алфавитном
пор€дке.
**/
int main()
{
    FILE *file = fopen("text2.txt", "w");
    int n, i, in = 0, j;
    char sign = 'a';
    char string[LEN];
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        string[in] = sign;
        string[in+1] = '\0';
        fprintf(file, "%s\n", string);
        sign++;
        in++;
    }
    return 0;
}
