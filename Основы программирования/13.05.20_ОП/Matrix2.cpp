#include <iostream>

/**
М. Э. Абрамян
Даны целые положительные числа M и N. Сформировать целочисленную матрицу размера M × N,
у которой все элементы J-го столбца имеют значение 5·J (J = 1, …, N).
Митюшин Пётр
*/

int main()
{
    const size_t MAXN = 1000;
    size_t m, n;
    std::cin >> m >> n;
    int matrix[MAXN][MAXN];
    for (size_t i = 0; i < m; ++i)
    {
        for (size_t j = 0; j < n; ++j)
        {
            matrix[i][j] = j * 5;
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
