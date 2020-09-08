/** Выполнид Роголев В.А.
В программе заданы месяц и год двух дат. Определить, принадлежит ли третья дата диапазону от первой даты до второй включительно. Задачу решить с использованием структуры данных.
*/

#include <stdio.h>

struct data {
    int year;
    int month;
};

main() {
    struct data  dat[3];
    
    for(int i = 0;i < 3;i++)
        scanf("%d %d",&dat[i].year, &dat[i].month);
    if (dat[2].year < dat[1].year && dat[2].year > dat[0].year)
        printf("Да");
    else if ((dat[2].year == dat[1].year || dat[2].year == dat[0].year)  && 
            dat[2].month <= dat[1].month && dat[2].month >= dat[0].month )
        printf("Да");
    else
        printf("Нет");
    return 0;
}