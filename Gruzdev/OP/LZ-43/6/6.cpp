/** 6. Написать класс «отрезок». Члены класса: две точки — начало и ко 
нец отрезка. В классе предусмотреть метод, вычисляющий длину отрезка. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <cmath>

using namespace std;

class Segment{
	private:
		int x, y;
	public:
		Segment(int, int);
	
		int getX();

		int getY();
};

int Segment::getX(){
	return x;}

int Segment::getY(){
	return y;}

Segment::Segment(int x_, int y_){

	x = x_;
	y = y_;

}

void length(Segment a, Segment b){
	cout << "Length segment = " << sqrt(pow((b.getX()-a.getX()),2) + pow((b.getY() - a.getY()),2)) << endl;
}


int main(){
    int x, y;
	cout << "Enter coor. point A: ";
	cin >> x >> y;
	Segment a(x,y);
	cout << "Enter coor. point B: ";
	cin >> x >> y;
	Segment b(x,y);
	length(a,b);



    return 0;
}
