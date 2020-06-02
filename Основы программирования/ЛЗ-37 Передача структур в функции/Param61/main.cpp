/* Programming Taskbook. Электронный задачник по программированию
(c)  М. Э. Абрамян (Южный федеральный университет), 1998–2020 */
// Составные типы данных в процедурах и функциях
// http://ptaskbook.com/ru/tasks/param.php
/** Param61°. Используя тип TDate и функцию DaysInMonth (см. задания Param59 и Param60),
описать функцию CheckDate(D) целого типа с параметром типа TDate,
которая проверяет правильность даты, указанной в параметре D.
Если дата D является правильной, то функция возвращает 0;
если в дате указан неверный номер месяца, то функция возвращает 1;
если в дате указан неверный день для допустимого месяца, то возвращается 2.
Вывести значение функции CheckDate для пяти данных дат. */
/* Решение: Роголеа В.А., 25.05.2020 */
#include <iostream>
#include "tdate.h"

using namespace std;

int main() {
    for (int i = 0; i < 5; i++) {
        tdate date;
        int h;

        cin >> date.year >> date.month >> date.day;
        cout << (date.leap_year() ? "yes" : "no") << endl;
        h = (date.CheckDate(date.DaysInMonth(date.leap_year())));
        cout << h << endl;
        if (h == 0)
        cout << (date.DaysInMonth(date.leap_year())) << endl;
        else
            cout << "Date is Wrong" << endl;
    }
    return 0;
}
