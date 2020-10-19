#include <iostream>
#include <fstream>
//Text7. Дана строка S и текстовый файл. Добавить строку S в начало файла.
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");
	const int size = 1000;
	char a[size];
	int i = 0;
	int max;

	string S;
	cin >> S;

	//1.

	ifstream fin;
	fin.open("1.txt");

	fin.get(a[i]);

	while (!fin.eof())
	{
		i++;
		fin.get(a[i]);
	}

	fin.close();

	max = i;
	i = 0;

	//2.

	ofstream fout;
	fout.open("2.txt");

	fout << a[i];

	while (i < max - 1)
	{
		++i;
		fout << a[i];
	}

	fout.close();

	//3.

	ofstream Fout;
	Fout.open("1.txt");
	
	Fout << S;

	Fout.close();

	char b[size];
	int j = 0;

	ifstream Fin;
	Fin.open("2.txt");

	Fin.get(b[j]);

	while (!Fin.eof())
	{
		j++;
		Fin.get(b[j]);
	}

	Fin.close();

	max = j;
	j = 0;

	ofstream fileout;
	fileout.open("1.txt", ofstream::app);
	
	fileout << b[j];

	while (j < max - 1)
	{
		++j;
		fout << b[j];
	}

	fileout.close();


	char c[size];
	int n = 0;


	ifstream fiin;
	fiin.open("2.txt");

	fiin.get(c[n]);

	while (!fiin.eof())
	{
		n++;
		fiin.get(c[n]);
	}

	fiin.close();

	max = n;
	n = 0;



	ofstream foout;
	foout.open("1.txt", ofstream::app);

	foout << c[n];

	while (n < max - 1)
	{
		++n;
		foout << c[n];
	}

	foout.close();

	return 0;
}
