#include <stdio.h>
#include <stdlib.h>
typedef struct Coord {
    int x;
    int y;
} Point;

int main(){
    Point coord = {7, 5};
    Point *directPoint;
    int *px, *py;
    directPoint = &coord;
    px = &(coord.x);
    py = &(coord.y);
    printf("Object! px: %p coord.x: %d\n", px, coord.x);
    printf("Object! py: %p coord.y: %d\n", py, coord.y);
    px = &(directPoint->x);
    py = &(directPoint->y);
    printf("Direct! px: %p coord.x: %d\n", px, coord.x);
    printf("Direct! py: %p coord.y: %d\n", py, coord.y);
    scanf("%d%d", &(coord.x), &(coord.y));
    printf("scanf! coord.x: %d\n", coord.x);
    printf("scanf! coord.y: %d\n", coord.y);
    return 0;
}
