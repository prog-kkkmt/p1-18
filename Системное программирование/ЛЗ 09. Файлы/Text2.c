#include <stdio.h>
#include <locale.h>
#define LEN 27
/**
Äàíî èìÿ ôàéëà è öåëîå ÷èñëî N (0 < N < 27). Ñîçäàòü òåêñòîâûé ôàéë ñ óêàçàííûì èìåíåì è çàïèñàòü
â íåãî N ñòðîê: ïåðâàÿ ñòðîêà äîëæíà ñîäåðæàòü ñòðî÷íóþ (ò. å. ìàëåíüêóþ) ëàòèíñêóþ áóêâó «a»,
âòîðàÿ — áóêâû «ab», òðåòüÿ — áóêâû «abc» è ò. ä.;
ïîñëåäíÿÿ ñòðîêà äîëæíà ñîäåðæàòü N íà÷àëüíûõ ñòðî÷íûõ ëàòèíñêèõ áóêâ â àëôàâèòíîì ïîðÿäêå.
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
        string[ind] = symbol;
        fprintf(file, "%s\n", string);
        symbol += 1;
        ++ind;
    }
    return 0;
}
