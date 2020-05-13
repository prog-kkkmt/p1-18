/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/* Двумерные массивы (матрицы): вывод элементов */
/** Matrix8. Дана матрица размера M × N и целое число K (1 ≤ K ≤ N).
    Вывести элементы K-го столбца данной матрицы. */
/* Решение. Рогоев В.А., МГОТУ ККМТ, 13.05.2020 */
#include <iostream>
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

    for (size_t i = 0; i < n; i++) {
        cout << mat[i][k];
        if (i < n - 1)
            cout << "\n";
    }
    cout << endl;
	return 0;
}
