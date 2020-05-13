/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/**Matrix19. Дана матрица размера M × N. Для каждой строки матрицы найти сумму ее элементов.*/
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

    int sum = 0;
    int prod = 1;
    for(size_t i = 0;i < n; i++){
        sum = 0;
        prod = 1;
    for (size_t j = 0; j < n; j++) {
        sum += mat[i][j];
        prod *= mat[i][j];
    }
    cout << "line=" << i << " sum=" << sum << " prod=" << prod << endl;
    }
	return 0;
}
