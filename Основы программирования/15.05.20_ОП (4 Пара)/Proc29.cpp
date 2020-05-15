#include <iostream>

/**
М. Э. Абрамян
Описать функцию DigitCount(K) целого типа, находящую количество цифр целого положительного числа K.
Используя эту функцию, найти количество цифр для каждого из пяти данных целых положительных чисел.
Митюшин Пётр
*/

int DigitCount(int k)
{
    int p, nc = 0;
    while(k > 0)
    {
        k = k / 10;
        ++nc;
    }
    return nc;
}

int main()
{
    int n;
    std::cin >> n;
    std::cout << DigitCount(n);
    return 0;
}
