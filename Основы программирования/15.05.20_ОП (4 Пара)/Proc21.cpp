#include <iostream>

/**
М. Э. Абрамян
Описать функцию SumRange(A, B) целого типа, находящую сумму всех целых чисел от A до B включительно (A и B — целые).
Если A > B, то функция возвращает 0. С помощью этой функции найти суммы чисел от A до B и от B до C,
если даны числа A, B, C.
Митюшин Пётр
*/

void SumRange(int *a, int *b, int *summ)
{
    if (*a > *b)
    {
        *summ = 0;
    }
    else
    {
        for(; *a <= *b; ++*a)
        {
            *summ += *a;
        }
    }
}

int main()
{
    int a, b, c, summ = 0;
    std::cin >> a >> b >> c;
    SumRange(&a, &b, &summ);
    std::cout << summ << std::endl;
    summ = 0;
    SumRange(&b, &c, &summ);
    std::cout << summ;
    return 0;
}
