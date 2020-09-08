#include <stdio.h>
#include <math.h>

/**
Напишите функцию, которая принимает длины сторон треугольника и выводит площадь треугольника.

Note:

ваш ответ должен быть округлен до двух знаков после запятой
если стороны не могут образовать треугольник, верните "Invalid Triangle"
*/

float ploshad_treo(int a, int b, int c){
    float p, s;
    p = (a + b + c) / 2.0;
    s = sqrt(p * (p - a) * (p - b) * (p - c));
    return s;
}

int main(){
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);
    if (a + b > c && a + c > b && b + c > a){
        printf("%.2f", ploshad_treo(a, b, c));
    }
    else
        printf("Invalid Triangle");
    return 0;
}
