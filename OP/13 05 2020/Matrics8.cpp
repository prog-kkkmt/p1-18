/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/* Двумерные массивы (матрицы): вывод элементов */
/** Matrix9. Дана матрица размера M × N. Вывести ее элементы, расположенные в строках с четными номерами (2, 4, …).
    Вывод элементов производить по строкам, условный оператор не использовать.
    Брусник Вадим П1-18*/
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

    for (size_t i = 0; i < m; i+=2)
		for (size_t j = 0; j < n; j++) {
        cout << mat[i][j];
        if (i < n - 1)
            cout << "\t";
    }
    cout << endl;
	return 0;
}
