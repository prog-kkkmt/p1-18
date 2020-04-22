#include <stdio.h>
#include <stdlib.h>


typedef struct Time
{
    unsigned char hour;   // часы
    unsigned char min;    // минуты
    unsigned char sec;    // секунды
} Timer;

// функция принимает объект struct Time
// вместо struct Time можно использовать
// синоним Timer
// Передаем указатель на объект типа Timer
// для передачи значений
void timePlus(Timer a, struct Time b, Timer * tmp){
    // Чтобы функция могла вернуть какой-либо объект,
    // он должен быть в ее распоряжении

    int sec, min, h;
    sec = a.sec + b.sec;
    min = sec / 60 + a.min + b.min;
    h = min / 60 + a.hour + b.hour;

    // заполнение атрибутов переданного объекта
    tmp->sec = sec % 60;
    tmp->min = min % 60;
    tmp->hour = h % 12;

};

// функция печати времени в формате hh:mm:ss
void printTime(Timer a)
{
    printf("%02hhu:%02hhu:%02hhu\n", a.hour, a.min, a.sec);
};

int main(){
    Timer t1, t2; // объект дата
    Timer res;

    
    // ввод в формате hh:mm:ss
    scanf("%hhu:%hhu:%hhu", &(t1.hour), &(t1.min), &(t1.sec));
    scanf("%hhu:%hhu:%hhu", &(t2.hour), &(t2.min), &(t2.sec));

    // вызов функции timePlus(), c передачей 
    // указателя на res
    timePlus(t1, t2, &res);

    
    printTime(res);
    return 0;
}
