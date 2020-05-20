/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/* Процедуры и функции: работа с массивами */
/** Param3. Описать процедуру MinmaxNum(A, N, NMin, NMax),
находящую номера минимального и максимального элемента вещественного массива A размера N.
Выходные параметры целого типа: NMin (номер минимального элемента) и NMax (номер максимального элемента).
С помощью этой процедуры найти номера минимальных и
максимальных элементов массивов A, B, C размера NA, NB, NC соответственно.*/
/* Решение. Роголев В.А., МГОТУ ККМТ, 20.05.2020 */
#include <iostream>
using namespace std;

void MinmaxNum(double *v, int n, double *Nmin, double *Nmax);
int main()
{
    setlocale(LC_ALL, "Russian");
    for (int k = 0; k < 3; k++)
    {
        int n;
        double Nmin,Nmax;
        cout << "Размер масива " << k+1 << ":";
        cin >> n;
        double *v = new double[n];
        for (int i = 0; i < n; i++)
            cin >> v[i];
        MinmaxNum(v, n,&Nmin,&Nmax);
        cout << "Максимальное:" << Nmax << endl;
        cout << "Минимальное:" << Nmin << endl;
        cout << endl;
    }


    return 0;
}

void MinmaxNum(double *v, int n, double *Nmin, double *Nmax)
{
    *Nmin = *Nmax = v[0] ;
    for (int i = 1; i < n; i++)
    {
        if (v[i]>*Nmax)
            *Nmax = v[i];
        if (v[i]<*Nmin)
            *Nmin = v[i];
    }

}

