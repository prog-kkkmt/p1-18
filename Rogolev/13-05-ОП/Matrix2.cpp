/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Двумерные массивы (матрицы)
// http://ptaskbook.com/ru/tasks/matrix.php
/** Matrix2. Даны целые положительные числа M и N. Сформировать целочисленную матрицу размера M × N,
у которой все элементы J-го столбца имеют значение 5·J (J = 1, …, N). */
/* Решение. Роголев В.А., МГОТУ ККМТ, 13.05.2020 */

#include <iostream>
using namespace std;

int main()
{
    const size_t MAXN = 100;
    size_t m, n;
    cin >> m >> n;
    int mat[MAXN][MAXN];
    for (size_t i = 0; i < m; i++)
        for (size_t j = 0; j < n; j++)
            mat[i][j] = 5*j;
    for (size_t i = 0; i < m; i++)
    {
        for (size_t j = 0; j < n; j++)
        {
            cout << mat[i][j];
            if (j < n - 1)
                cout << "\t";
        }
        cout << endl;
    }
    return 0;
}
