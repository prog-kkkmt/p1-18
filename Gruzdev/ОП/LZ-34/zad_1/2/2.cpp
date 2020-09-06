/** 2. Ввести с клавиатуры значения переменных a и b. Поменять значе 
ния переменных местами, используя указатели.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    int a, b;
        cout << "Enter a: ";
	cin >> a;
	cout << "Enter b: ";
	cin >> b;
	cout << "a = " << a << endl << "b = " << b << endl;
	cout << "Swap!" << endl;
    int *pa = &a, *pb = &b, pa2 = *pa;
	*pa = *pb;
	*pb = pa2;
	cout << "a = " << a << endl << "b = " << b << endl;
    return 0;
}
