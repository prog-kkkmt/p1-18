#include <iostream>

/**
Дана матрица размера M × N и целое число K (1 ≤ K ≤ M).
Найти сумму и произведение элементов K-й строки данной матрицы.
*/

int main()
{
    const size_t MAXN = 100;
    size_t m, n;
    int k, summ = 0, prois = 1;
    std::cin >> m >> n >> k;
    int matrix[MAXN][MAXN];
    --k;
    for (size_t i = 0; i < m; ++i)
    {
        for(size_t j = 0; j < n; ++j)
        {
            matrix[i][j] = i + 1;
        }
    }
    for (size_t i = 0; i < m; ++i)
    {
        for(size_t j = 0; j < n; ++j)
        {
            std::cout << matrix[i][j];
            if (j < n - 1)
                std::cout << '\t';
        }
        std::cout << std::endl;
    }
    for (size_t j = 0; j < n; ++j)
    {
            summ += matrix[k][j];
            prois *= matrix[k][j];
    }
    std::cout << summ << '\n' << prois;
    return 0;
}
