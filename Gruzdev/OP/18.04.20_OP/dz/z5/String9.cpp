/** String9°. Дано четное число N (> 0) и символы C1 и C2. Вывести строку длины N, которая состоит из чередующихся символов C1 и C2, начиная с C1. */

#include <string>
#include <iostream>

using namespace std;

int main(){

unsigned char  c1, c2;
int n;
string s;

	cout << "Enter digit: ";
	cin >> n;

	cout << "Enter char one: ";
	cin >> c1;

	cout << "Enter char two: ";
	cin >> c2;

		for(int i = 0; i < n; i++)
			if(i % 2 == 0)
				s += c1;
			else 
				s += c2;
		cout << "Your string on output - " << s;
   return 0;
}
