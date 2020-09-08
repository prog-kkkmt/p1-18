#include <stdio.h>

int main(){
    int food1, food2, food3;
    double price1, price2, price3;
    scanf("%d %d %d", &food1, &food2, &food3);
    scanf("%lf %lf %lf ", &price1, &price2, &price3);
    double summ = (food1 * price1) + (food2 * price2) + (food3 * price3);
    printf("%.2lf", summ);
    return 0;
}
