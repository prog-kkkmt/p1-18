/** 4. Написать класс «окружность». Члены класса: радиус окружности,
координаты центра окружности. Методы класса: установка радиуса, вычисление
длины окружности, вычисление площади круга. Продемонстрировать применение класса.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

class CCircle{
	private:
		double r, pi = 3.14;
		int x, y;
	public:
		CCircle(double, int, int);
		
		void CLength();

		void CArea();
};

CCircle::CCircle(double r_, int x_, int y_){
	r = r_;
	x = x_;
	y = y_;
}

void CCircle::CLength(){
	cout << "Длина окружности: " << 2*pi*r << endl;
}

void CCircle::CArea(){
	cout << "Площадь круга: " << pi*r*r << endl;
}

int main(){
	double r; int x, y;
	cout << "Введите радиус окружности: "; cin >> r; cout << endl;
	cout << "Введите координаты центра окружности: "; cin >> x >> y;
	CCircle a(r,x,y);
	a.CLength();
	a.CArea();


    return 0;
}
