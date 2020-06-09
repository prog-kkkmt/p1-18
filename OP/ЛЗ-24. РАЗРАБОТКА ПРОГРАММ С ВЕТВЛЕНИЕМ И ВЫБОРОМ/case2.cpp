///Case2°. Дано целое число K. Вывести строку-описание оценки, соответствующей числу K
///(1 — «плохо», 2 — «неудовлетворительно», 3 — «удовлетворительно», 4 — «хорошо», 5 — «отлично»). Если K не лежит в диапазоне 1–5, то вывести строку «ошибка».Брусник Вадим П1-18 15 04 2020
/** Начало мантры */
#include <iostream>
using namespace std;
/** Конец мантры */
int main() {
    int k;
    char *days = "glhf"; /* Определение с инициализацией */
    cin >> k;
    switch (k) {
    case 1:
        days = "Ploxo";
        break;
    case 2:
         days = "Neydovletvoritelno";
        break;
    case 3:
         days = "Ydovletvoritelno";
        break;
    case 4:
         days = "Xorosho";
        break;
    case 5:
         days = "Otlichno";
        break;
    default:
        days = "gg";
        break;
    }
    if (days != "gg")
        cout << days;
    else
        cout << "wrong number" << endl;
    return 0;
}
