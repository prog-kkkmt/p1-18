/**   2. Пусть некоторое устройство содержит в качестве состояния число
от 0 до 126. В каждый следующий момент времени число меняется по 
формуле x(n + 1) = (a * x(n) + b) mod 127, a = 10, b = 11. Создать класс, 
отображающий это устройство. В классе должны быть функции члены: конструктор,
функция, переводящая устройство в следующее состояние,
функция, отображающая текущее состояние устройства. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <stdlib.h>
#include <ctime>

using namespace std;

class Ustroystvo{
	private:
		int  a = 10, b = 11;
	public:
		int x; 
	public:
		Ustroystvo(int);

		void Next(int &x){
			x = (a * x + b) % 127;
			cout << "Новое состояние устройства - " << x << endl;
		}
		
		void Stayte(int &x){
			cout << "Текущее состояние устройства - " << x << endl;
		}
};

Ustroystvo::Ustroystvo(int x_){
	x = x_;
}

int main(){
	srand(time(0));
	int x = rand() % 126;
	Ustroystvo a(x);
	a.Stayte(a.x);
	a.Next(a.x);


    return 0;
}
