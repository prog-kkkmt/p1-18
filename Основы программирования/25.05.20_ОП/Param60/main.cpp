#include <iostream>
#include "tdate.h"
#include <cmath>
/**
»спользу€ тип TDate и функцию LeapYear (см. задание Param59), описать функцию DaysInMonth(D) целого типа с параметром типа TDate, котора€ возвращает количество дней дл€ мес€ца, указанного в дате D.
¬ывести значение функции DaysInMonth дл€ п€ти данных дат (предполагаетс€, что все даты €вл€ютс€ правильными).
*/

using namespace std;

int main()
{
    int DataMonth;
    for (int i = 0; i < 5; ++i)
    {
        Point date;
        cin >> date.Day >> date.Month >> date.Year;
        DataMonth = date.Month;
        cout << DataMonth << endl;
        cout << date.Day << ' ' << date.Month << ' ' << date.Year;
        //cout << Point.DaysInMonth(date.Month);
        //printf("%d", Point::DaysInMonth(Point::Month)) //date.DaysInMonth(date.Month));
        //std::cout << date.DaysInMonth(date.Month);
    }
    return 0;
}
