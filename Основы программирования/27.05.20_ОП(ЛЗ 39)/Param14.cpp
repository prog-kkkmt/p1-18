#include <iostream>

/**
М. Э. Абрамян
Описать процедуру Split1(A, NA, B, NB, C, NC), формирующую по вещественному массиву A размера NA два вещественных массива B и C размера NB и NC соответственно;
при этом массив B содержит все элементы массива A с нечетными порядковыми номерами (1, 3, …),
а массив C — все элементы массива A с четными номерами (2, 4, …).
Массивы B и C и числа NB и NC являются выходными параметрами.
Применить эту процедуру к данному массиву A размера NA и вывести размер и содержимое полученных массивов B и C.
Митюшин Пётр
*/

void Split1(int a[], int *na, int b[], int *nb, int c[], int *nc)
{
    int index_b = 0, index_c = 0;
    for (int i = 0; i < *na; ++i)
    {
        if (i % 2 != 0)
        {
            b[index_b] = a[i];
            ++index_b;
        }
        if (i % 2 == 0)
        {
            c[index_c] = a[i];
            ++index_c;
        }
    }
}

int main()
{
    // na = 11, nb = 5, nc = 5
    int na, nb, nc;
    std::cin >> na >> nb >> nc;
    int a[na] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int b[nb];
    int c[nc];
    Split1(a, &na, b, &nb, c, &nc);

    for (int i = 0; i < na; ++i)
    {
        std::cout << a[i] << ' ';
    }

    std::cout << std::endl;

    for (int i = 0; i < nb; ++i)
    {
        std::cout << b[i] << ' ';
    }

    std::cout << std::endl;

    for (int i = 0; i < nc; ++i)
    {
        std::cout << c[i] << ' ';
    }
    return 0;
}
