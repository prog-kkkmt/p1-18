/**String13. Дана строка. Подсчитать количество содержащихся в ней цифр.*/

#include <iostream>
#include <string>

using namespace std;

int main(){

unsigned short count = 0, size_l;
string s;

	cout << "Enter your string: ";
	getline(cin, s);
	size_l = s.size();

	for (int i = 0; i != size_l; ++i)
		if (s[i] >= '0' && s[i] <= '9')
			++count;

	cout << "Total digits per line: " << count << endl;

    return 0;
}
