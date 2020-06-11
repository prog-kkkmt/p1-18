/**
Напишите программу, способную читать строки со
стандартного устройства ввода и соеденять
их водну большую строку.Отобразите полученную строку.
Измените программу так, чтобы отделить
соседние введенные строки пробелами
*/

#include <iostream>
#include <string>

using namespace std;

int main(){
	string s, s1, s2;

	cout << "For end write: stop" << endl;
	getline(cin, s);
	while (s != "stop"){
		s1 += s;
		s2 += s + ' ';
		getline(cin, s);
	}
	cout << s1 << endl
		<< s2 << endl;
	return 0;
}
