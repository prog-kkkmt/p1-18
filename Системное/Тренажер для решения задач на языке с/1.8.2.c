/** Выполнид Роголев В.А.
Напишите функцию, которая принимает длины сторон треугольника и выводит площадь треугольника.

Note:

ваш ответ должен быть округлен до двух знаков после запятой
если стороны не могут образовать треугольник, верните "Invalid Triangle"    
*/

#include <stdio.h>
#include <math.h>

int main(){
    float a,b,c,p;
    scanf("%f %f %f",&a, &b, &c);
    if ((a + b > c) && (a + c > b) && (b + c > a)) 
    {
        p = (a+b+c)/2;
        printf("%.2f", sqrt(p*(p-a)*(p-b)*(p-c)));
    }
    else
        printf("Invalid Triangle");
    return 0;
}