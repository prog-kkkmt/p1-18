#ifndef TDATE_H
#define TDATE_H

struct tdate{
    int day;
    int month;
    int year;

	bool leap_year();
};

struct Point{
    int Day;
    int Month;
    int Year;

    bool leap_year();
    int DaysInMonth(int Month);
    int CheckDate(int D);
};
#endif // DATE_H
