/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/* Процедуры и функции: работа с массивами */
/** Param2. Описать функцию MaxNum(A, N) целого типа,
находящую номер максимального элемента вещественного массива A размера N.
С помощью этой функции найти номера максимальных элементов
массивов A, B, C размера NA, NB, NC соответственно.*/
#include <iostream>
using namespace std;

double MaxNum(double *v, int n);
int main() {
    setlocale(LC_ALL, "Russian");
    for (int k = 0; k < 3; k++) {
        int n;
        double m;
        cout << "Размер масива " << k+1 << ":";
        cin >> n;
        double *v = new double[n];
        for (int i = 0; i < n; i++)
            cin >> v[i];
        m = MaxNum(v, n);

                cout << "Максимальное:" << m << endl;
        }
        cout << endl;

	return 0;
}

double MaxNum(double *v, int n) {
    double t = v[0] ;
    for (int i = 1; i < n; i++)
        if (v[i]>t)
            t = v[i];

        return t;
    }

