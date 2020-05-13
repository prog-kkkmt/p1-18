/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Двумерные массивы (матрицы): работа с диагоналями
Matrix81. Дана квадратная матрица A порядка M.
Найти среднее арифметическое элементов ее побочной диагонали,
т. е. диагонали, содержащей следующие элементы:
A1,M,    A2,M−1,    A3,M−2,    …,    AM,1.*/
/* Решение. Роголев В.А., МГОТУ ККМТ, 06.05.2020 */
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

    int sred = 0;
    for (size_t i = 0; i < m; i++)
        sred += mat[i][i];
    sred /= m;
    cout << "sred=" << sred << endl;

	return 0;
}
