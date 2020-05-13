/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Matrix3. Даны целые положительные числа M, N и набор из M чисел. Сформировать матрицу размера M × N,
    у которой в каждом столбце содержатся все числа из исходного набора (в том же порядке). */
/* Решение. Роголев В.А., МГОТУ ККМТ, 13.05.2020 */

#include <iostream>
using namespace std;

int main()
{
    const size_t MAXN = 100;
    size_t m, n;
    size_t i, j;
    cin >> m >> n;
    int nabor[m];
    for(i = 0;i<m;i++)
    cin >> nabor[i];
    int mat[MAXN][MAXN];
    for (i = 0; i < m; i++)
        for (j = 0; j < n; j++)
            mat[i][j] = nabor[j];
    for (i = 0; i < m; i++)
    {
        for (j = 0; j < n; j++)
        {
            cout << mat[i][j];
            if (j < n - 1)
                cout << "\t";
        }
        cout << endl;
    }
    return 0;
}
