/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/* Двумерные массивы (матрицы): работа с диагоналями
Matrix80. Дана квадратная матрица A порядка M. Найти сумму элементов ее главной диагонали,
т. е. диагонали, содержащей следующие элементы:
a[0][0], a[1][1], ..., a[m][m] */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 06.05.2020 */
#include <iostream>
using namespace std;

int main() {
	const size_t MAXN = 100;
	size_t m;
	cin >> m;

	int mat[MAXN][MAXN];
	for (size_t i = 0; i < m; i++)
		for (size_t j = 0; j < m; j++)
			cin >> mat[i][j];

    int sum = 0;
    for (size_t i = 0; i < m; i++)
        sum += mat[i][i];

    cout << "sum=" << sum << endl;

	return 0;
}
