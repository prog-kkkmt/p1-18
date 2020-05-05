/* Циклы. continue. Найти сумму вводимых четных чисел. Окончание ввода - 0 */
/* 14.04.2020, Гусятинер Л.Б., МГОТУ ККМТ */
/** Начало мантры */
#include <iostream>
using namespace std;
/** Конец мантры */
int main() {
    int sum = 0;
    int x;
    while (cin >> x && x != 0) {
        if (x % 2 != 0)
            continue; // Не лучший способ, но для демонстрации
        /* if (x % 2 == 0) sum += x; */
        sum += x;
    }
    cout << sum << endl;

    return 0;
}
