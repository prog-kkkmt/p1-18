/** Proc3. Описать процедуру Mean(X, Y, AMean, GMean), вычисляющую среднее арифметическое AMean = (X+Y)/2 и среднее геометрическое GMean = (X·Y)1/2 двух положительных чисел X и Y (X и Y — входные, AMean и GMean — выходные параметры вещественного типа). С помощью этой процедуры найти среднее арифметическое и среднее геометрическое для пар (A, B), (A, C), (A, D), если даны A, B, C, D.
 */
// Выполнил: Грузде Роман, П1-18

#include <iostream>
#include <cmath>
using namespace std;

void Mean(double x, double y){
	double amean = (x + y)/2 , gmean = pow((x*y),0.5);
	cout << "AMean = " << amean << endl;
	cout << "GMean = " << gmean << endl;
}

int main(){
    double a, b, c, d;
	cout <<  "Entered A: "; cin >> a; cout << endl;
	cout <<  "Entered B: "; cin >> b; cout << endl;
	cout <<  "Entered C: "; cin >> c; cout << endl;
	cout <<  "Entered D: "; cin >> d; cout << endl;

	cout << "GMean and AMean for (a,b): "; Mean(a,b);
	cout << "GMean and AMean for (a,c): "; Mean(a,c); 
	cout << "GMean and AMean for (a,d): "; Mean(a,d); 
    return 0;
}
