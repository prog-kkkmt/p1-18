/** Используя тип TPoint и функцию Leng (см. задание Param64), описать тип TTriangle — запись с полями A, B, C типа TPoint (вершины треугольника) — и функцию Perim(T) вещественного типа, находящую периметр треугольника T (T — параметр типа TTriangle). С помощью этой функции найти периметры треугольников ABC, ABD, ACD, если даны координаты точек A, B, C, D. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include "ttriangle.h"

using namespace std;

int main(){

    tpoint point_a, point_b, point_c, point_d;
    ttriangle t_abc, t_abd, t_acd;

    	cout << "Enter coords A: ";
	cin >> point_a.x >> point_a.y;
	cout << "Enter coords B: ";
	cin >> point_b.x >> point_b.y;
	cout << "Enter coords C: ";
	cin >> point_c.x >> point_c.y;
	cout << "Enter coords D: ";
	cin >> point_d.x >> point_d.y;

	t_abc.a = point_a; t_abc.b = point_b; t_abc.c = point_c;
	t_abd.a = point_a; t_abd.b = point_b; t_abd.c = point_d;
	t_acd.a = point_a; t_acd.b = point_c; t_acd.c = point_d;

	cout << "Perimetr treangle ABC: " << perim(t_abc) << endl;
	cout << "Perimetr treangle ABD: " << perim(t_abd) << endl;	
	cout << "Perimetr treangle ACD: " << perim(t_acd) << endl;

    return 0;
}
