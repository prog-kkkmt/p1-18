/** Param64. Описать тип TPoint — запись с полями вещественного типа X и Y (координаты точки на плоскости) — и функцию Leng(A, B) вещественного типа, находящую длину отрезка AB на плоскости по координатам его концов:

|AB| = ((A.X − B.X)2 + (A.Y − B.Y)2)1/2

(A и B — параметры типа TPoint). С помощью этой функции найти длины отрезков AB, AC, AD, если даны координаты точек A, B, C, D. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include "tpoint.h"

using namespace std;

int main(){
    tpoint point_a, point_b, point_c, point_d;
    	cout << "Enter coords A: ";
	cin >> point_a.x >> point_a.y;
	cout << "Enter coords B: ";
	cin >> point_b.x >> point_b.y;
	cout << "Enter coords C: ";
	cin >> point_c.x >> point_c.y;
	cout << "Enter coords D: ";
	cin >> point_d.x >> point_d.y;
	cout << "Length segment AB: " << leng(point_a, point_b) << endl;
	cout << "Length segment AC: " << leng(point_a, point_c) << endl;
	cout << "Length segment AD: " << leng(point_a, point_d) << endl;
    return 0;
}
