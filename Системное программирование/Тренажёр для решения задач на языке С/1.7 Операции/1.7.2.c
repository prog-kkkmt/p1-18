#include <stdio.h>

/**
На вход подаются три числа. С помощью тернарного оператора найти минимальное число.
*/

int main() {
    int a, b, c, min;
    scanf("%d %d %d", &a, &b, &c);
    min = a < b ? (a < c ? a : c) : (b < c ? b : c);
    printf("%d", min);
    return 0;
}
