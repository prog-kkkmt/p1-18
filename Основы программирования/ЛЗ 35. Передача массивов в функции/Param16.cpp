/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/* Процедуры и функции: работа с массивами */
/* Param16. Описать процедуру ArrayToMatrRow(A, K, M, N, B), формирующую
по вещественному массиву A размера K матрицу B размера M * N
(матрица заполняется элементами массива A по строкам).
«Лишние» элементы массива игнорируются; если элементов массива недостаточно,
то оставшиеся элементы матрицы полагаются равными 0.
Двумерный массив B является выходным параметром.
С помощью этой процедуры на основе данного массива A размера K и целых чисел M и N
сформировать матрицу B размера M * N. */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 07.05.2020 */
#include <iostream>
using namespace std;

void ArrayToMatrRow(const double *a, int k, int m, int n, double **b);
int main() {
    int k;
    cin >> k;
    double *a = new double[k];
    for (int i = 0; i < k; i++)
        cin >> a[i];
    int m, n;
    cin >> m >> n;
    double **b = new double* [m];
    for (int i = 0; i < m; i++)
        b[i] = new double[n];
    ArrayToMatrRow(a, k, m, n, b);
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++)
            cout << b[i][j] << " ";
        cout << endl;
    }

    for (int i = 0; i < m; i++)
        delete[] b[i];
    delete[] b;
    delete[] a;
	return 0;
}

void ArrayToMatrRow(const double *a, int k, int m, int n, double **b) {
    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++)
            b[i][j] = (j < k) ? a[j] : 0;
}
