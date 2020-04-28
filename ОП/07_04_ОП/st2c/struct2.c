#include <stdio.h>
#include <stdlib.h>

// Допустим описана подобная структура
typedef struct Termin
{
    unsigned char day;   // день месяца
    unsigned char month; // месяц года
    unsigned int year;   // год
} Date;

// Функция печати даты
// функция принимает объект struct Termin
// вместо struct Termin можно использовать
// синоним Date
void printDate(struct Termin a){
    // при вызове функции с параметром, значения всех 
    // полей копируется в соответствующие поля объекта a
    printf("%04u-%02hhu-%02hhu\n", a.year, a.month, a.day);
};

int main(){
    Date dt; // объект дата

    // получение значений атрибутов с консоли
    scanf("%u%hhu%hhu", &(dt.year), &(dt.month), &(dt.day));

    // вызов функции printDate(), параметр функции dt
    printDate(dt);

    return 0;
}
