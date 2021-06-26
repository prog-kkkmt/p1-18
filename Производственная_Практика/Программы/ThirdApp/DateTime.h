#ifndef DATETIME_H
#define DATETIME_H
#include <QDateTime>
#include <Windows.h>

QDateTime DoubleToDateTime(double value)
{
    SYSTEMTIME st = { 0 };
    ::VariantTimeToSystemTime(value, &st);
    QDate d(st.wYear, st.wMonth, st.wDay);
    QTime t(st.wHour, st.wMinute, st.wSecond);
    return QDateTime(d, t);
}

DATE DateTimeToVariantTime(const QDateTime &dt)
{
    DATE vt = 0.0;
    QDate d = dt.date();
    QTime t = dt.time();
    SYSTEMTIME st = { 0 };
    st.wDay = d.day();
    st.wMonth = d.month();
    st.wYear = d.year();
    st.wDayOfWeek = d.dayOfWeek();
    st.wHour = t.hour();
    st.wMinute = t.minute();
    st.wSecond = t.second();
    st.wMilliseconds = t.msec();
    ::SystemTimeToVariantTime(&st, &vt);
    return vt;
}



#endif // DATETIME_H
