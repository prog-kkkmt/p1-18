#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct ClockFace
{
    char min;
    char h;

    int *dayOfmonth;
} Ctime;

int main(){
    Ctime timer1, timer2;
    int date = 21;
    timer1.h = 11;
    timer1.min = 10;
    timer1.dayOfmonth = &date;
    timer2.h = 3;
    timer2.min = 45;
    timer2.dayOfmonth = &date;
    date++;
    printf("timer1: %02d %02hhd:%02hhd\n", *(timer1.dayOfmonth), timer1.h, timer1.min);
    printf("timer2: %02d %02hhd:%02hhd\n", *(timer2.dayOfmonth), timer2.h, timer2.min);
    return 0;
}
