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
    lin.a.x = 0; // вершина a, координата x
    lin.a.y = 0; // вершина a, координата y
    lin.b.x = 3; // вершина b, координата x
    lin.b.y = 4; // вершина b, координата y

    // вычислим длину отрезка lin и присвоим это значение атрибуту distance

    lin.distance = sqrtf((lin.a.x - lin.b.x) * (lin.a.x - lin.b.x) + (lin.a.y - lin.b.y) * (lin.a.y - lin.b.y));

    // печать
    printf("lin: a(%d, %d) b(%d, %d), %0.2f\n", lin.a.x, lin.a.y, lin.b.x, lin.b.y, lin.distance);
    return 0;
}
