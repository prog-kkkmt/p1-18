/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/** Param60°. Используя тип TDate и функцию LeapYear (см. задание Param59),
описать функцию DaysInMonth(D) целого типа с параметром типа TDate,
которая возвращает количество дней для месяца,
указанного в дате D. Вывести значение функции DaysInMonth для пяти данных дат
(предполагается, что все даты являются правильными). */
/* Решение: Роголеа В.А., 25.05.2020 */
#include <iostream>
#include "tdate.h"

using namespace std;

int main() {
    for (int i = 0; i < 5; i++) {
        tdate date;
        cin >> date.year >> date.month >> date.day;
        cout << (date.leap_year() ? "yes" : "no") << endl;
        cout << (date.DaysInMonth(date.leap_year())) << endl;
    }
    return 0;
}
