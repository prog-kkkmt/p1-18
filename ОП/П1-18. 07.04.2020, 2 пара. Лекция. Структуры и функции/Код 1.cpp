#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/// Конец мантры

typedef struct ClockFace
{
    char min;         /// минуты
    char h;           /// часы
    /// этот атрибут будет иметь смысл только если ему
    /// передать адрес существующей переменной для даты
    int *dayOfmonth; /// адрес переменной день месяца
} Ctime;

int main(){
    ///объявляем переменные типа Ctime
    Ctime timer1, timer2;
    /// объявляем переменную для даты
    int date = 21;

    /// Присвоим значения атрибутам timer1
    timer1.h = 11;
    timer1.min = 10;
    /// присваиваем адрес переменной date
    /// до этого реального адреса в dayOfmonth не было
    timer1.dayOfmonth = &date;

    /// Присвоим значения атрибутам timer1
    timer2.h = 3;
    timer2.min = 45;
    /// присваиваем адрес переменной date
    /// до этого реального адреса в dayOfmonth не было
    timer2.dayOfmonth = &date;

    /// изменим значение даты и напечатаем результат
    date++;

    /// печать
    /// *(timer1.dayOfmonth) - значение по адресу timer1.dayOfmonth
    printf("timer1: %02d %02hhd:%02hhd\n", *(timer1.dayOfmonth), timer1.h, timer1.min);
    printf("timer2: %02d %02hhd:%02hhd\n", *(timer2.dayOfmonth), timer2.h, timer2.min);
    return 0;
}
