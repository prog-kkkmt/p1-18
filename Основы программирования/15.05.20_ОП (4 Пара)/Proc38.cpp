#include <iostream>

/**
М. Э. Абрамян
Описать функцию Power2(A, N) вещественного типа, находящую величину AN (A — вещественный, N — целый параметр) по следующим формулам:
A0 = 1
AN = A·A·…·A    (N сомножителей),    если N > 0;
AN = 1/(A·A·…·A)    (|N| сомножителей),    если N < 0.
С помощью этой функции найти AK, AL, AM, если даны числа A, K, L, M.
Митюшин Пётр
*/

double Power2(double a, double n)
{
    double result = 1;
    if (n == 0)
    {
        a = 1;
    }
    else if (n > 0)
    {
        for (int i = 1; i <= n; i++)
        {
            result *= a;
        }
    }
    else if (n < 0)
    {
        n = n * (-1);
        for (int i = 1; i <= n; i++)
        {
            result *= a;
        }
        return 1 / result;
    }
    return result;
}

int main()
{
    double a, k, l, m;
    std::cin >> a >> k >> l >> m;
    std::cout << Power2(a, k) << ' ' << Power2(a, l) << ' ' << Power2(a, m);
    return 0;
}
