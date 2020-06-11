#ifndef DATE_H
#define DATE_H

struct Date{ /* дата */
    int year; /* год */
    int month; /* месяц */
    int day; /* день */
	int ge(Date other);
	int le(Date other);
	int between(Date d1, Date d2);
	Date date_diff(Date other);
};
Date intsToDate(int year, int month, int day);
Date strToDate(char *s);

#endif
