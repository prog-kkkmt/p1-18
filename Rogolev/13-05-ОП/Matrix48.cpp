/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Двумерные массивы (матрицы): преобразование
Matrix48. Дана матрица размера M × N и целые числа K1 и K2 (1 ≤ K1 < K2 ≤ N).
Поменять местами столбцы матрицы с номерами K1 и K2. */
/* Решение. Роголев В.А., МГОТУ ККМТ, 13.05.2020 */
#include <iostream>
using namespace std;

int main() {
	const size_t MAXN = 100;
	size_t m, n;
	size_t k1, k2;
	cin >> m >> n;
	cin >> k1 >> k2;

	int mat[MAXN][MAXN];
	for (size_t i = 0; i < m; i++)
		for (size_t j = 0; j < n; j++)
			cin >> mat[i][j];

    if (k1 != k2) {
        int temp;
        for (size_t i = 0; i < n; i++) {
            temp = mat[i][k1];
            mat[i][k1] = mat[i][k2];
            mat[i][k2] = temp;
        }
    }

	for (size_t i = 0; i < m; i++) {
		for (size_t j = 0; j < n; j++) {
			cout << mat[i][j];
			if (j < n - 1)
				cout << "\t";
		}
		cout << endl;
	}
	return 0;
}
