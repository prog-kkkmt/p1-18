/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/* Двумерные массивы (матрицы): анализ элементов
Matrix17. Дана матрица размера M * N и целое число K (0 <= K < M).
Найти сумму и произведение элементов K-й строки данной матрицы. */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 06.05.2020 */
#include <iostream>
#include <vector>
using namespace std;

int main() {
	const size_t MAXN = 100;
	size_t m, n;
	size_t k;
	cin >> m >> n;
	cin >> k;

	int mat[MAXN][MAXN];
	for (size_t i = 0; i < m; i++)
		for (size_t j = 0; j < n; j++)
			cin >> mat[i][j];

    int sum = 0;
    int prod = 1;
    for (size_t j = 0; j < n; j++) {
        sum += mat[k][j];
        prod *= mat[k][j];
    }
    cout << "line=" << k << " sum=" << sum << " prod=" << prod << endl;
	return 0;
}
