/**4. Упражнение 3.5. Напишите программу, читающую со стандартного устройства ввода целые строки.
Измените программу так, чтобы она читала отдельные слова.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>
using namespace std;

int main(){
/** string s
 	while(getline(cin,s))
       		cout << s << endl;
	return 0;	*/
  string s;
	while(cin >> s)
		cout << s << endl;
   return 0;
}
