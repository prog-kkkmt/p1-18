#ifndef TDATE_H_INCLUDED
#define TDATE_H_INCLUDED

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

    int DaysInMonth(int Month);
};
#endif // TDATE_H_INCLUDED
