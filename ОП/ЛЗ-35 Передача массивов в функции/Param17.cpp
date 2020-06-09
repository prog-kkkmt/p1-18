/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/* Процедуры и функции: работа с массивами */
/** Param17°. Описать процедуру ArrayToMatrCol(A, K, M, N, B), формирующую по вещественному массиву A размера K матрицу B размера M × N
(матрица заполняется элементами массива A по столбцам). «Лишние» элементы массива игнорируются; если элементов массива недостаточно,
то оставшиеся элементы матрицы полагаются равными 0. Двумерный массив B является выходным параметром.
С помощью этой процедуры на основе данного массива A размера K и целых чисел M и N сформировать матрицу B размера M × N. */
#include <iostream>
using namespace std;

void ArrayToMatrCol(const double *a, int k, int m, int n, double **b);
int main()
{
    setlocale(LC_ALL, "Russian");
    int k;
    cout << "Размер масива А:";
    cin >> k;
    double *a = new double[k];
    cout << "Масив А:";
    for (int i = 0; i < k; i++)
        cin >> a[i];
    int m, n;
    cout << "Размеры Матрицы В:";
    cin >> m >> n;
    double **b = new double* [m];
    for (int i = 0; i < m; i++)
        b[i] = new double[n];
    ArrayToMatrCol(a, k, m, n, b);
    cout << "Матрица В: \n";
    for (int i = 0; i < m; i++)
    {
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

void ArrayToMatrCol(const double *a, int k, int m, int n, double **b)
{
    for (int i = 0; i < m; i++)
        for (int j = 0; j < n; j++)
            b[j][i] = (j < k) ? a[j] : 0;
}
