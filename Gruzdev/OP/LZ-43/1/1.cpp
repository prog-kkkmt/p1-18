/** 1. Написать класс точка в трехмерном пространстве (CPoint3D). Чле 
ны класса — координаты точки x, y, z. В классе предусмотреть следующие
методы: конструктор, деструктор, задание значений координатам точки,
вывод на экран информации о точке. Создать несколько объектов этого
класса. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

class CPoint3d{
    private:
	int x, y, z;
    public:
	CPoint3d(int, int, int);
	
	~CPoint3d();

	void prit();
};

CPoint3d::CPoint3d(int x_, int y_, int z_){
	x = x_;
	y = y_;
	z = z_;
}

CPoint3d::~CPoint3d(){}

void CPoint3d::prit(){
	cout << "Tochka (" << x << ", " <<  y << ", " << z << ")" << endl;
}

int main(){
     CPoint3d a(4,7,2), b(8,2,0), c(9,3,5);
	a.prit();
	b.prit();
	c.prit();


    return 0;
}
