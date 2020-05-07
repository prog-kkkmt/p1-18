/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Одномерные массивы
// http://ptaskbook.com/ru/tasks/array.php
/* Array1. Дано целое число N (>0). Сформировать и вывести целочисленный массив размера N, содержащий
N первых положительных нечетных чисел: 1, 3, 5, ... . */
/* Решение. Гусятинер Л.Б., МГОТУ ККМТ, 07.05.2020 */
#include <iostream>
using namespace std;

int main() {
	size_t n;
	cin >> n;
	int *v = new int [n];
	for (size_t i = 0; i < n; i++)
        *(v + i) = i * 2 + 1;
	for (size_t i = 0; i < n; i++) {
		cout << *(v + i);
        if (i < n - 1)
            cout << ",";
    }
    cout << endl;

    delete [] v;

	return 0;
}
