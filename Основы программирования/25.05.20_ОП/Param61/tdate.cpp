#include "tdate.h"

using namespace std;

bool Point::leap_year() {
    return Year % 400 == 0 || (Year % 4 == 0 && Year % 100 != 0);
}

int Point::CheckDate(int D){
    if (Month > 12)
    {
        return 1;
    }
    if (Day > D)
    {
        return 2;
    }
}

int Point::DaysInMonth(int Month){
    int DayMonth;
    if (Month == 1 || Month == 3 || Month == 5 || Month == 7 || Month == 8 || Month == 10 || Month == 12)
    {
        DayMonth = 31;
    }
    else if (Month == 4 || Month == 6 || Month == 9 || Month == 11)
    {
        DayMonth = 30;
    }
    else if (Month == 2)
    {
        if (Point::leap_year())
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
