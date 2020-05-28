#include <iostream>
#include <fstream>
//Text5. Дана строка S и текстовый файл. Добавить строку S в конец файла.
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");

	string S;
	cin >> S;

	ofstream fout;
	fout.open("TXT5.txt", ofstream::app); // ofstream::app - запись в конец файла

	if (!fout.is_open())
	{
		cout << "Ошибка открытия файла!";
	}

	else
	{
		fout << S;
	}

	fout.close();

	return 0;
}