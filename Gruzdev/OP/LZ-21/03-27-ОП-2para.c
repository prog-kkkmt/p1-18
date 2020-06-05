#include <stdio.h>
#include <math.h>


//Теперь у  struct Coord новое имя типа - Point 

typedef struct Coord
//  точка в пространстве
{
    short int x;   // координата точки x
    short int y;   // координата точки y
    short int z;   // координата точки z
} Point;
// Вместо "struct Coord a" будем писать "Point a" 

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
	scanf("%hd\n%hd\n%hd\n",&lin.a.x,&lin.a.y,&lin.a.z);
	 scanf("%hd\n%hd\n%hd",&lin.b.x,&lin.b.y,&lin.b.z);

  // вычислим длину отрезка lin и присвоим это значение атрибуту distance
  
    lin.distance = sqrtf((lin.a.x - lin.b.x) * (lin.a.x - lin.b.x) + (lin.a.y - lin.b.y) * (lin.a.y - lin.b.y) + (lin.a.z - lin.b.z) * (lin.a.z - lin.b.z));
    
   printf("\nlin: a(%d, %d, %d) b(%d, %d, %d), distance = %0.2f\n", lin.a.x, lin.a.y, lin.a.z, lin.b.x, lin.b.y, lin.b.z, lin.distance);
    return 0;
}
