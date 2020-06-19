// Начало мантры
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// Конец мантры

// Дадим структуре struct Coord  синоним Point - новое имя типа

typedef struct Coord
//  точка на плоскости
{
    short int x;   // координата точки x
    short int y;   // координата точки y
    short int z;   /// координата точки z
} Point;
// теперь вместо struct Coord a;
// можно написать просто Point a;


typedef struct LineSegment
{
    // описание вершин отрезка
    // Point - это структура struct Coord
    Point a;        // вершина a
    Point b;        // вершина b
    float distance; // расстояние между вершинами (длина отрезка)
} Line; // новое имя типа Line


int main(){
    //объявляем переменную типа Line
    Line lin;

    // Присвоим значения координатам вершин отрезка lin
    printf("Enter 3 cord for A Point: ");
    scanf("%d%d%d",&lin.a.x, &lin.a.y, &lin.a.z);
    printf("Enter 3 cord for B Point: ");
    scanf("%d%d%d",&lin.b.x, &lin.b.y, &lin.b.z);

    // вычислим длину отрезка lin и присвоим это значение атрибуту distance

    lin.distance = sqrtf(pow((lin.a.x - lin.b.x),2) +
                         pow((lin.a.y - lin.b.y),2) +
                         pow((lin.a.z - lin.b.z),2));

    // печать
    printf("lin: a(%d, %d, %d) b(%d, %d, %d) , %0.2f\n",
           lin.a.x, lin.a.y, lin.a.z,
           lin.b.x, lin.b.y, lin.b.z,
           lin.distance);
    return 0;
}
