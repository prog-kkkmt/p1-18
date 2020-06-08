#include <stdio.h>
#include <stdlib.h>
struct Date
{
    int year;
    char month;
    char day;
};

int main(){
    struct Date oneDay;
    struct Date *ptrDate;
    int days = 0;
    scanf("%d%hhd%hhd",&(oneDay.year), &(oneDay.month), &(oneDay.day));
    ptrDate = &oneDay;
    days += ptrDate->year * 12 * 30;
    days += ptrDate->month * 30;
    days += ptrDate->day;
    printf("oneDay: %04d.%02hhd.%02hhd\n",ptrDate->year, ptrDate->month, ptrDate->day);
    printf("dnei c nachala otscheta: %d\n",days);
    return 0;
}
