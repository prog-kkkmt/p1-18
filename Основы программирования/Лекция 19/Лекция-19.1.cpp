/* Циклы. Таблица умножения for-for */
/* 14.04.2020, Гусятинер Л.Б., МГОТУ ККМТ */
/** Начало мантры */
#include <iostream>
using namespace std;
/** Конец мантры */
int main() {
    int n;
    cin >> n;
    for (int i = 0; i < n; i++) {
        // Переменную можно объявить внутри управляющей конструкции */
        for (int j = 0; j < n; j++)
            cout << (i + 1) * (j + 1) << '\t';
        cout << endl;
    }
    return 0;
}
