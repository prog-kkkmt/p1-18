/* Циклы. Таблица умножения do_while - while */
/* 14.04.2020, Гусятинер Л.Б., МГОТУ ККМТ */
/** Начало мантры */
#include <iostream>
using namespace std;
/** Конец мантры */
int main() {
    int n;
    cin >> n;
    int i = 0;
    do {
        // Переменную можно объявить в блоке
        int j = 0;
        while (j < n) {
            cout << (i + 1) * (j + 1) << '\t';
            j++;
        }
        cout << endl;
        i++;
    } while (i < n);
    return 0;
}
