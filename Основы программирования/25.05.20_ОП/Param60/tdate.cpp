#include <cmath>
#include "tdate.h"

bool tdate::leap_year() {
    return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
}


int Point::DaysInMonth(Point::Month){
    int DayMonth;
    if (Month == 1 || Month == 3 || Month == 5 || Month == 7 || Month == 8 || Month == 10 || Month == 12)
    {
        DayMonth = 31;
    }
    else if (Month == 4 || Month == 6 || Month == 9 || Month == 11)
    {
        DayMonth = 30;
    }
    else if (Point::Month == 2)
    {
        if (leap_year(Point::Year))
        {
            DayMonth = 29;
        }
        else
        {
            DayMonth = 28;
        }
    }
    return DayMonth;
}
