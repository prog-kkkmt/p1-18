#include <stdio.h>
#include <stdlib.h>

typedef struct Time
{
    unsigned char hour;
    unsigned char min;
    unsigned char sec;
} Timer;

int time2usec(Timer t) {
    int res = t.hour * 24 + t.min;
    res = res * 60 + t.sec;
    return res;
}
Timer usec2time(int sec) {
    Timer t;
    t.sec = sec % 60;
    sec = sec / 60;
    t.min = sec % 60;
    sec = sec / 60;
    t.hour = sec % 24;
    return t;
}
Timer timeMinus(Timer from, Timer to){
    Timer tmp;
    int sec_from = time2usec(from);
    int sec_to = time2usec(to);
    tmp = usec2time(sec_to - sec_from);
    return tmp;
};

int main()
{
    Timer t1, t2;
    Timer res;
    scanf("%hhu:%hhu:%hhu", &(t1.hour), &(t1.min), &(t1.sec));
    scanf("%hhu:%hhu:%hhu", &(t2.hour), &(t2.min), &(t2.sec));
    res = timeMinus(t1, t2);
    printTime(res);
    return 0;
}
