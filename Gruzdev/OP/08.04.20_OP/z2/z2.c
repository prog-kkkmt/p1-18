#include <stdio.h>
#include <stdlib.h>


typedef struct Time
{
    unsigned char hour; // часы
    unsigned char min;  // минуты
    unsigned char sec;  // секунды
} Timer;

// функция печати времени в формате hh:mm:ss
void printTime(Timer a)
{
    printf("%02hhu:%02hhu:%02hhu\n", a.hour, a.min, a.sec);
};

// функция вычисления разницы между показаниями 
// предполагаем, что первый параметр - более позднее событие,
// а второй параметр - более раннее
Timer timeMinus(Timer a, struct Time b){
    // Чтобы функция могла вернуть какой-либо объект,
    // он должен быть в ее распоряжении

    // Создадим временный объект tmp типа Timer,
    // в который запишем результаты вычислений
    // после окончания работы функции все локальные
    // переменные, в том числе и tmp прекратят свое
    // существование
    Timer tmp;
    unsigned char sec, min, h;
    h = a.hour - b.hour - 1;
    min = 60 + a.min - b.min - 1;
    sec = 60 + a.sec - b.sec;

    tmp.sec = sec % 60;
    tmp.min = (min  + sec / 60 ) % 60;
    tmp.hour = (h + min / 60 ) % 24;

    // возврат объекта типа  Timer
    return tmp;
};


int main(){
    Timer t1, t2; // объект дата
    Timer res;
    // получение значений атрибутов с консоли
    // ввод в формате hh:mm:ss
    scanf("%hhu:%hhu:%hhu", &(t1.hour), &(t1.min), &(t1.sec));
    scanf("%hhu:%hhu:%hhu", &(t2.hour), &(t2.min), &(t2.sec));

    // вызов функции timePlus() и получение копии 
    // возвращаемого значения
    res = timeMinus(t1, t2);

   
    printTime(res);
    return 0;
}
