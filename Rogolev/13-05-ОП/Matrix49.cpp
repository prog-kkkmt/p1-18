/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Двумерные массивы (матрицы): преобразование
Matrix49. Дана матрица размера M × N. Преобразовать матрицу,
поменяв местами минимальный и максимальный элемент в каждой строке. */
/* Решение. Роголев В.А., МГОТУ ККМТ, 13.05.2020 */
#include <iostream>
using namespace std;

int main() {
	const size_t MAXN = 100;
	size_t m, n;
	cin >> m >> n;

	int mat[MAXN][MAXN];
	for (size_t i = 0; i < m; i++)
		for (size_t j = 0; j < n; j++)
			cin >> mat[i][j];

    int temp,mini,maxi;

	for (size_t i = 0; i < m; i++){
            mini = maxi = 0;
        for (size_t j = 0; j < n; j++) {
            if(mat[i][mini] > mat[i][j])
                mini = j;
            if (mat[i][maxi] < mat[i][j])
                maxi = j;
        }
        temp = mat[i][mini];
        mat[i][mini] = mat[i][maxi];
        mat[i][maxi] = temp;
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
