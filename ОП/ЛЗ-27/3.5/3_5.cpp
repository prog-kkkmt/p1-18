/**
Напишите программу, читающий со стандратног
устройства ввода целые строки.Измените программу так,
чтобы она читала отдельные слова.
*/

#include <iostream>
#include <string>

using std::cin;
using std::cout;
using std::endl;
using std::string;

int main(){
	string s;
	string word;
	char c;

	while (cin >> word)
		cout << word << endl;

	cout << endl;
	return 0;
}

/**
Input:

Hi, Dad!

Output:

Hi,
Dad!
*/
