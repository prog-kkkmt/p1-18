/**Text2. ƒано им€ файла и целое число N (0 < N < 27). —оздать текстовый файл с указанным именем и записать в него N строк: перва€ строка должна содержать строчную (т. е. маленькую) латинскую букву
 Ђaї, втора€ Ч буквы Ђabї, треть€ Ч буквы Ђabcї и т. д.; последн€€ строка должна содержать N начальных строчных латинских букв в алфавитном пор€дке.
 Ѕрусник ¬адим ѕ1-18*/

#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main(){
	ofstream file("text.txt");

	string s;
	unsigned short n;

	cin >> n;

	if (n <= 26)
		for (unsigned short i = 0; i < n; ++i){
			s += 'a' + i;
			file << s << endl;
		}
	else
		cout << "Error: bruh\n";
	file.close();
	return 0;
}
