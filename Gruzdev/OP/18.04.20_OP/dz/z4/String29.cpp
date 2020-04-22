/**String29°. Дан символ C и строки S, S0. Перед каждым вхождением символа C в строку S вставить строку S0.*/

#include <iostream>
#include <string>

using namespace std;

int main(){

char c;
string s, s0, s1;
unsigned short size_l;

	cout << "Enter your string: ";
	getline(cin, s);

	cout << "Enter string for insert: ";
	getline(cin, s0);

	cout << "Enter c: ";
        c = getchar();


	size_l = s.size();
		for (int i = 0; i < size_l; ++i){
			if (s[i] == c)
				s1 += s0;
			s1 += s[i];
		}
	
	cout << s1 << endl;

    return 0;
}
