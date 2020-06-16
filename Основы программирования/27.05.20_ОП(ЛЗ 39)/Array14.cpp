#include <iostream>
#include <vector>
/**
М. Э. Абрамян
Дан массив A размера N. Вывести вначале его элементы с четными номерами (в порядке возрастания номеров), а затем — элементы с нечетными номерами (также в порядке возрастания номеров):
A2,    A4,    A6,    …,    A1,    A3,    A5,    … .
Митюшин Пётр
*/

int main()
{
    int n;
    std::cin >> n;
    std::vector <int> a(n);
    for (int i = 0; i < n; ++i)
    {
        a[i] = i;
    }
    for (int i = 0; i < n; ++i)
    {
        if (i % 2 == 0)
        {
            std::cout << a[i] << ' ';
        }
    }
    std::cout << std::endl;
    for (int i = 0; i < n; ++i)
    {
        if (i % 2 != 0)
        {
            std::cout << a[i] << ' ';
        }
    }
    return 0;
}
