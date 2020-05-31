/** 2. Ввести с клавиатуры значения переменных a и b. Поменять значения переменных местами, используя указатели.
Брусник Вадим П1-18
*/
#include <iostream>
using namespace std;

int main(){
    int a, b;
        cout << "a: ";
        cin >> a;
        cout << "b: ";
        cin >> b;
    int *aa = &a, *bb = &b,temp;
	temp = *aa;
	*aa = *bb;
	*bb = temp;

	cout << "a = " << a << endl<< "b = " << b << endl;
    return 0;
}
