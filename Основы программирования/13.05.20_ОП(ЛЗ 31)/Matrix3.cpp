#include <iostream>

/**
М. Э. Абрамян
Даны целые положительные числа M, N и набор из M чисел. Сформировать матрицу размера M × N,
у которой в каждом столбце содержатся все числа из исходного набора (в том же порядке).
Митюшин Пётр
*/

int main()
{
    const size_t MAXN = 1000;
    size_t m, n;
    std::cin >> m >> n;
    int matrix[n][m];
    for (size_t i = 0; i < m; ++i)
    {
        for (size_t j = 0; j < n; ++j)
        {
            std::cin >> matrix[i][j];
        }
    }

    for (size_t i = 0; i < m; ++i)
    {
        for (size_t j = 0; j < n; ++j)
        {
            std::cout << matrix[i][j];
            if (j < n - 1)
                std::cout << '\t';
        }
        std::cout << std::endl;
    }
    return 0;
}
