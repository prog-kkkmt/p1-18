/* Param61 */
#include "tdate.h"

using namespace std;

bool tdate::leap_year() {
    /* Високосный год? */
    return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
}

int tdate::DaysInMonth(bool l) {
    int n;
    if (month == 2)
        n = (l ? 29 : 28);
    else if (month < 8)
        n = (month%2 ? 31 : 30);
    else
        n = (month%2 ? 30 : 31);
    return n;
}

int tdate::CheckDate(int d) {
    if (month > 12)
        return 1;
    if (day > d)
        return 2;
    return 0;
}
