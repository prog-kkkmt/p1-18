#include <stdio.h>

int main(){
    int a,b,c;
    double tmp;
    scanf("%d%d%d", &a, &b, &c);
    tmp = a + b + c;
    tmp = tmp / 3;
    printf("%.2f", tmp);
    return 0;
}
