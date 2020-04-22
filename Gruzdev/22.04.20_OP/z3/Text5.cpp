/**Text5. Дана строка S и текстовый файл. Добавить строку S в конец файла.*/
#include <iostream>
#include <string>
#include <fstream>

using namespace std;

int main(){

  string s;

	ofstream out("out_r.txt", ios::app);

	getline(cin, s);
	out << s << endl;

	out.close();
	return 0;
}
