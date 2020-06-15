#include <stdio.h>
#include <stdlib.h>

struct Date
{
    int year;
    char month;
    char day;
};

int main(){

    struct Date startDay;
    struct Date newDay;
    int days;
    int y;
    char m,d;

    scanf("%d%hhd%hhd", &y, &m, &d);

    startDay.year = y;
    startDay.month = m;
    startDay.day = d;

    newDay = startDay;
    printf("newDay: %04d.%02hhd.%02hhd\n", newDay.year, newDay.month, newDay.day);

    scanf("%d", &days);

    newDay.day += days;
    newDay.day %= 30;
    m = startDay.month + (newDay.day + days) / 30;
    newDay.month += m - 1;
    newDay.month %= 12;
    newDay.month++;
    newDay.year += m / 12 ;

    printf("newDay: %04d.%02hhd.%02hhd\n",newDay.year, newDay.month, newDay.day);
    return 0;
}
