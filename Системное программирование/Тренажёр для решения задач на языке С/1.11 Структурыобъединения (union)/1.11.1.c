#include <stdio.h>
#include <stdlib.h>

struct data
{
    int month;
    int year;
};

void dateComparison(struct data Data1, struct data Data2, struct data DataSravnen)
{
    if (Data1.year <= DataSravnen.year && Data2.year >= DataSravnen.year)
        printf("Да");
    else
        printf("Нет");
}

int main()
{
    struct data Data1;
    struct data Data2;
    struct data DataSravnen;
    scanf("%d %d %d %d %d %d", &Data1.year, &Data1.month, &Data2.year, &Data2.month, &DataSravnen.year, &DataSravnen.month);
    dateComparison(Data1, Data2, DataSravnen);
    return 0;
}
