/**  3. Написать функции вычисления поэлементной суммы и разности
двух объектов класса CPoint. */
// Выполнил: Груздев Роман, П1-18

#include <iostream> 

using namespace std;


class CPoint{
	public:
		int x, y;
	public:
		CPoint(int ,int);
};

CPoint::CPoint(int x_, int y_){
	x = x_;
	y = y_;
}

void operation(CPoint a, CPoint b){
	cout << "Разность точек - (" << a.x - b.x << ", " << a.y - b.y << ")" << endl;
	cout << "Сумма точек - (" << a.x + b.x << ", " << a.y + b.y << ")" << endl;
}

int main(){
	CPoint a(4,7),b(8,2);
	operation(a,b);

    return 0;

}
