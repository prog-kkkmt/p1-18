#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct Coord
{
    short int x;
    short int y;
} Point;

typedef struct LineSegment
{
    Point a;
    Point b;
    float distance;
} Line;


int main(){
    Line lin;

    lin.a.x = 0;
    lin.a.y = 0;
    lin.b.x = 3;
    lin.b.y = 4;
    lin.distance = sqrtf((lin.a.x - lin.b.x) * (lin.a.x - lin.b.x) + (lin.a.y - lin.b.y) * (lin.a.y - lin.b.y));
    printf("lin: a(%d, %d) b(%d, %d), %0.2f\n", lin.a.x, lin.a.y, lin.b.x, lin.b.y, lin.distance);
    return 0;
}
