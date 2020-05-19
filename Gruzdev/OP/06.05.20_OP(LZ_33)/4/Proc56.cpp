/** Proc56. Описать функцию Leng(xA, yA, xB, yB) вещественного типа, находящую длину отрезка AB на плоскости по координатам его концов:

|AB| = ((xA − xB)2 + (yA − yB)2)1/2
*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <cmath>
using namespace std;

void Leng(double x1, double y1, double x2, double y2){
	double length = pow(pow((x1-x2),2) + pow((y1 - y2),2),0.5);
	cout << "Длина вашего отрезка на плоскости равна: " << length << endl;
}


int main(){
   double x1, x2, y1, y2;
	cout << "Введите 2 точки с двумя координатами:" << endl;
	cout << "Точка A: "; 
	cin >> x1 >> y1;
	cout << "Точка B: ";
	cin >> x2 >> y2;

	Leng(x1,y1,x2,y2);

    return 0;
}
