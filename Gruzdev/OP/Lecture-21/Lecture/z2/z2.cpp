/** Задача приветствует того, чьё имя вы введёте  */

// Проверил исходник: Груздев Роман, П1-18



#include <string>
#include <iostream>
using namespace std;

int main(){
	string name;
	cout << "Enter your name: ";
	cin >> name;
	cout << "Hi, " << name << endl;
	
    return 0;
}
