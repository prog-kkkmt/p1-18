#include <stdio.h>

/**
На вход программе подается сначала число n, а после - n целых чисел. Требуется определить, упорядоченны ли числа по неубыванию. Вывести “True” или “False".
Митюшин Пётр
*/

int main()
{
    int n, elem, i, temp, nc = 0;
    scanf("%d", &n);
    scanf("%d", &elem);
    for (i = 0; i < n; i++)
    {
        temp = elem;
        scanf("%d", &elem);
        if (temp <= elem)
        {
            ++nc;
        }
    }
    if (nc == n)
    {
        printf("True");
    }
    else
        printf("False");
    return 0;
}
