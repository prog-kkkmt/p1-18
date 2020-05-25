#include <iostream>
#include "tdate.h"

using namespace std;

int main() {
    for (int i = 0; i < 5; i++) {
        int h;
        Point date;
        cin >> date.Year >> date.Month >> date.Day;
        cout << (date.leap_year() ? "yes" : "no") << endl;
        //cout << Point.DaysInMonth(date.Month);
        h = (date.CheckDate(date.DaysInMonth(date.leap_year())));
        cout << h << endl;
        if (h == 0)
        {
            cout << (date.DaysInMonth(date.leap_year())) << endl;
        }
    }
    return 0;
}
