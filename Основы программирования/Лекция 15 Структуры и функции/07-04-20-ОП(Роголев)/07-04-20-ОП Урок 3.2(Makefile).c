#include <stdio.h>
#include <stdlib.h>

typedef struct Termin
{
    unsigned char day;
    unsigned int month;
    unsigned int year;
} Date;

void printDate(struct Termin day){
    printf("%04u-%02hhu-%02hhu\n", day.year, day.month, day.day);
};

void getDate(Date* a){
    printf("Enter Date (yyyy mm dd): ");
    scanf("%u%hhu%hhu", &(a->year), &(a->month), &(a->day));
};

int main(){
    Date dt;
    getDate(&dt);
    printDate(dt);
    return 0;
}
