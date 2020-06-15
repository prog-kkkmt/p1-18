#include <iostream>

/**
М. Э. Абрамян
Дана матрица размера M × N и целое число K (1 ≤ K ≤ M).
Вывести элементы K-й строки данной матрицы.
Митюшин Пётр
*/

int main()
{

    const size_t MAXN = 1000;
    size_t m, n;
    int k, nc = 0;
    std::cin >> m >> n >> k;
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

    for (size_t i = 0; i < m; ++i)
    {
        for (size_t j = 0; j < n; ++j)
        {
            if (k - 1 == i)
            {
                std::cout << matrix[i][j] << ' ';
            }
        }
    }
    return 0;
}
