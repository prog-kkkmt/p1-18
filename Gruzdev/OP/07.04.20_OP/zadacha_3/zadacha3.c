#include <stdio.h>
#include <stdlib.h>


typedef struct Termin
{
    unsigned char day;   // день месяца
    unsigned char month;// месяц года
    unsigned int year;   // год
} Date;

// Функция печати даты

void printDate(struct Termin day){
    printf("%04u-%02hhu-%02hhu\n", day.year, day.month, day.day);
};

// Функция получения даты
void getDate(Date* a){
    scanf("%u%hhu%hhu", &a->year, &a->month, &a->day);
};

int main(){
    Date dt; // объект дата

    // получение значений атрибутов с консоли
    getDate(&dt);

    // печать
    printDate(dt);

    return 0;
}
