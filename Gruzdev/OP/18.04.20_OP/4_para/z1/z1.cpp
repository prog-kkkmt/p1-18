/** Задача выводит количество символов в s1, кокатенирует строки s1 и s2, а затем сравнивает их.  */

// Проверил исходник: Груздев Роман, П1-18



#include <iostream>
#include <string>
using namespace std;

int main(){
	string s1 = "Hello";
	cout << s1.size() << endl;

	string s2 = ", world!";
	s1 += s2;
	cout << s1;

	if(s1 == s2)
		cout << "s1 == s2" << endl;
	return 0;
}
