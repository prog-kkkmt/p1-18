#include <iostream>

/**
М. Э. Абрамян
 Дана матрица размера M × N. Вывести ее элементы, расположенные в строках с четными номерами (2, 4, …).
 Вывод элементов производить по строкам, условный оператор не использовать.
*/

int main()
{
    const size_t MAXN = 100;
	size_t m, n;
	std::cin >> m >> n;
	int matrix[MAXN][MAXN];
    for (size_t i = 0; i < m; ++i)
    {
        for (size_t j = 0; j < n; ++j)
        {
            matrix[i][j] = (i + 1) + (j + 1);
        }
    }
    for (size_t i = 2; i < m; i += 2)
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
