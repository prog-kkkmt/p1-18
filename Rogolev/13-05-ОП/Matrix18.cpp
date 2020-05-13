/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Matrix18. Дана матрица размера M × N и целое число K (1 ≤ K ≤ N).
    Найти сумму и произведение элементов K-го столбца данной матрицы.*/
/* Решение. Роголев В.А., МГОТУ ККМТ, 13.05.2020 */
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

    int sum = 0;
    int prod = 1;
    for (size_t i = 0; i < n; i++) {
        sum += mat[i][k];
        prod *= mat[i][k];
    }
    cout << "line=" << k << " sum=" << sum << " prod=" << prod << endl;
	return 0;
}
