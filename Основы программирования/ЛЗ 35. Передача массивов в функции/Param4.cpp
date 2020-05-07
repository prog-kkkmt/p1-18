/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/* Процедуры и функции: работа с массивами */
/* Param4. Описать процедуру Inv(A, N), меняющую порядок следования элементов вещественного
массива A размера N на обратный (инвертирование массива). Массив A является входным и
выходным параметром. С помощью этой процедуры инвертировать массивы A, B, C размера
NA, NB, NC соответственно. */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 07.05.2020 */
#include <iostream>
using namespace std;

void inv(double *v, int n);
int main() {
    for (int k = 0; k < 3; k++) {
        int n;
        cin >> n;
        double *v = new double[n];
        for (int i = 0; i < n; i++)
            cin >> v[i];
        inv(v, n);
        for (int i = 0; i < n; i++) {
            cout << v[i];
            if (i < n - 1)
                cout << ",";
        }
        cout << endl;
        delete [] v;
    }
	return 0;
}

void inv(double *v, int n) {
    for (int i = 0, j = n - 1; i < j; i++, j-- ){
        double t = v[i];
        v[i] = v[j];
        v[j] = t;
    }
}
