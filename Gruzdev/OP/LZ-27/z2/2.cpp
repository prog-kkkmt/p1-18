/**6. Упражнение 3.7. Напишите программу, которая читает две строки и уведомляет, равны ли они, а если нет, какая из них больше.
Измените программу так, чтобы она указывала, имеют ли строки одинаковую длину, и если нет, то какая из них длинней.
*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>
using namespace std;

int main(){
  string s1, s2;
  	cout << "Enter string s1: ";
	getline(cin,s1);
	cout << "Enter string s2: ";
	getline(cin,s2);
	if(s1 == s2)
		cout << "Strings are equal" << endl;
	else{
		if(s1 > s2)
			cout << "s1 greater s2" << endl;
		else 
			cout << "s2 greater s1" << endl;
	}
	if(s1.size() == s2.size())
		cout << "Lenghts are equal" << endl;
	else{
		if(s1.size() > s2.size())
			cout << "s1 is longer than s2" << endl;
		else 
			cout << "s2 is longer than s1" << endl;
	}
   return 0;
}
