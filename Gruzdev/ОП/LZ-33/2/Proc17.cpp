/** Proc17. Описать функцию RootCount(A, B, C) целого типа, определяющую количество корней квадратного уравнения A·x2 + B·x + C = 0 (A, B, C — вещественные параметры, A ≠ 0). С ее помощью найти количество корней для каждого из трех квадратных уравнений с данными коэффициентами. Количество корней определять по значению дискриминанта:

D = B2 − 4·A·C.
*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <cmath>
using namespace std;

void RootCount(double a, double b, double c){
	double d = pow(b,2) - 4 * a * c; 
	if(d > 0)
		cout << "У квадратного уравнения 2 корня" << endl;
	else if(d == 0)
		cout << "У квадратного уравнения 1 корень" << endl;
	else if(d < 0)
		cout << "У квадратного уравнения нет корней :( " << endl;
}

int main(){
    double a, b, c;
	cout << "Введите A: "; cin >> a; cout << endl;
	cout << "Введите B: "; cin >> b; cout << endl;
	cout << "Введите C: "; cin >> c; cout << endl;

	cout << "Уравнение имеет вид: " << a << "*x^2 + " << b << "*x + " << c << " = 0" << endl;
	cout << "Узнаём количество корней.........." << endl;
	RootCount(a,b,c);
    return 0;
}
