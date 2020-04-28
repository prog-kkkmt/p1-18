/**4. Упражнение 3.5. Напишите программу, читающую со стандартного устройства ввода целые строки.
Измените программу так, чтобы она читала отдельные слова.*/
// Выполнил: Батраков Данила П1-18

#include <iostream>
#include <string>
using namespace std;

int main(){
/** string a
 	while(getline(cin,a))
       		cout << a << endl;
	return 0;	*/
  string a;
	while(cin >> a)
		cout << a << endl;
   return 0;
}
