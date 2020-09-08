#include <stdio.h>

/**
Найти и вывести первое отрицательное число из 3 введенных целых чисел. Если отрицательных чисел нет - вывести "Отрицательных чисел нет!".
*/

int main(){
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    if (a < 0){
        printf("%d", a);
    }
    else if (b < 0){
        printf("%d", b);
    }
    else if (c < 0){
        printf("%d", c);
    }
    else
        printf("Отрицательных чисел нет!");
    return 0;
}
