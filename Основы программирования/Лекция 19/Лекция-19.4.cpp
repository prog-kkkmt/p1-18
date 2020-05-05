/* Циклы. break. Найти сумму вводимых целых чисел. Окончание ввода - 0 */
/* 14.04.2020, Гусятинер Л.Б., МГОТУ ККМТ */
/** Начало мантры */
#include <iostream>
using namespace std;
/** Конец мантры */
int main() {
    int sum = 0;
    int x;
    while (cin >> x) {
        if (x == 0)
            break; // Не лучший способ, но для демонстрации
        sum += x;
    }
    cout << sum << endl;

    return 0;
}
