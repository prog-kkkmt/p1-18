#include <iostream>

/**
 М. Э. Абрамян
Дано целое число K и набор ненулевых целых чисел; признак его завершения — число 0.
Вывести количество чисел в наборе, меньших K.
Митюшин Пётр
*/

int main()
{
    int k, el, nc = 0;
    std::cin >> k;
    std::cin >> el;
    while (el != 0)
    {
        if (el < k)
            ++nc;
        std::cin >> el;
    }
    std::cout << nc;
    return 0;
}
