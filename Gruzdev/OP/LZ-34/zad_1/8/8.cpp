/** 8. Ввести с клавиатуры значения переменных a и b. Поменять значе 
ния переменных местами, используя ссылки.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    int a, b, &la = a, &lb = b;
    	cout << "Enter a: ";
	cin >> a;
    int a1 = a;
	cout << "Enter b: ";
	cin >> b;
	cout << "a = " << la << endl;
	cout << "b = " << lb << endl;
	cout << "Swap!" << endl;
	la = lb;
	lb = a1;
	cout << "a = " << la << endl;
	cout << "b = " << lb << endl;


    return 0;
}
