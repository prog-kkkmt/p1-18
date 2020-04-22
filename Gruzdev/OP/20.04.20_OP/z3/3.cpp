/**7. Упражнение 3.8. Напишите программу, способную читать строки со стандартного устройства ввода и соединять их в одну большую строку.
Отобразите полученную строку. Измените программу так, чтобы отделить соседние введенные строки пробелами.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>

using namespace std;

int main(){
  int n;
  	cout << "Enter your digit: ";
	cin >> n;
	cout << "Enter 5 lines: ";
	getchar();
   string s, s1, s2;
	for(int i = 0;i < n;i++){
		getline(cin,s);
		s1 += s;
}
	cout << "Your first string - " <<  s1 << endl;
	cout << "Enter 5 lines: ";
	for(int j = 0;j < n;j++){
		getline(cin,s);
		s2 += s + " ";
	}
	cout << "Your second string - " <<  s2 << endl;
   return 0;
}
