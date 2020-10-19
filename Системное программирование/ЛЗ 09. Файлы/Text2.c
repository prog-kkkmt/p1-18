#include <stdio.h>
#include <locale.h>
#define LEN 27
/**
ƒано им€ файла и целое число N (0 < N < 27). —оздать текстовый файл с указанным именем и записать
в него N строк: перва€ строка должна содержать строчную (т. е. маленькую) латинскую букву Ђaї,
втора€ Ч буквы Ђabї, треть€ Ч буквы Ђabcї и т. д.;
последн€€ строка должна содержать N начальных строчных латинских букв в алфавитном пор€дке.
*/
int main()
{
    setlocale(LC_ALL, "Rus");
    FILE *file = fopen("test.txt", "w");
    int n, i, ind = 0, j;
    char symbol = 'a';
    char string[LEN];
    scanf("%d", &n);
    for (i = 0; i < n; ++i)
    {
        symbol += i;
        string[ind] = symbol;
        fprintf(file, "%s\n", string);
        ++ind;
    }
    return 0;
}
