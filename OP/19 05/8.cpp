/**
 8. Ввести с клавиатуры значения переменных a и b. Поменять значения переменных местами, используя ссылки.
 Брусник Вадим П1-18
*/
#include <iostream>
using namespace std;

int main(){
	int a, b;
	cin >> a >> b;
	int &aa = a, &bb = b;
	int temp;
	temp = aa;
	aa = bb;
	bb = temp;
	cout << endl<< "Has become" << endl<< "a = " << a << endl<< "b = " << b << endl;
	return 0;
}
