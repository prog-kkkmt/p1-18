/** String5. Дано целое число N (1 ≤ N ≤ 26). Вывести N последних строчных (т. е. маленьких) букв латинского алфавита в обратном порядке (начиная с буквы «z»). */

#include <string>
#include <iostream> 
using namespace std;

int main(){

string s;
int n;
	cout << "Enter digit: ";
	cin >> n;
	if(n < 1 || n > 26)
		cout << "ERROR!";
	else{
		for(int i = 1;i <= n;i++)
			s += ('z' + 1 - i);
		cout << s << endl;}

	return 0;
}
