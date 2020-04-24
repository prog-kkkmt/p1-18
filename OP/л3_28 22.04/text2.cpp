/**Text2. ƒано им€ файла и целое число N (0 < N < 27). —оздать текстовый файл с указанным именем и записать в него N строк: перва€ строка должна содержать строчную (т. е. маленькую)
 латинскую букву Ђaї, втора€ Ч буквы Ђabї, треть€ Ч буквы Ђabcї и т. д.; последн€€ строка должна содержать N начальных строчных латинских букв в алфавитном пор€дке.
 Ѕ–усник ¬ад€ ѕ1-18*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
 int main(){

int n;
string name;
char c = 'a';
	cin >> name >> n;
	ofstream fout;
    fout.open(name.c_str());
	for (int i = 0; i < n; ++i){
		for (int j = 0; j <= i; ++j)
			fout << (char)(c+j);
		fout<<"\n";
	}
fout.close();
return 0;
}
