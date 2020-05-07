/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/* Matrix1. Даны целые положительные числа M и N. Сформировать целочисленную матрицу размера M * N,
у которой все элементы I-й строки имеют значение 10*I (I = 1, ..., M). */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 07.05.2020 */
#include <iostream>
using namespace std;

int main() {
	size_t m, n;
	cin >> m >> n;
	int **mat = new int* [m];
	for (size_t i = 0; i < m; i++)
        mat[i] = new int[n];
	for (size_t i = 0; i < m; i++) {
		int elem = 10 * i;
		for (size_t j = 0; j < n; j++)
			mat[i][j] = elem;
	}
	for (size_t i = 0; i < m; i++) {
		for (size_t j = 0; j < n; j++) {
			cout << mat[i][j];
			if (j < n - 1)
				cout << "\t";
		}
		cout << endl;
	}

	for (size_t i; i < m; i++)
        delete[] mat[i];
    delete [] mat;

	return 0;
}
