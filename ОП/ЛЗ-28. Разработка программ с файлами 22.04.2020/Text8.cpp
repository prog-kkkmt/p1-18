#include <iostream>
#include <fstream>
//Text8. Даны два текстовых файла. Добавить в начало первого файла содержимое второго файла.
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");

	const int size = 1000;
	char a[size];
	int i = 0;
	int maxi;

	char b[size];
	int j = 0;
	int maxj;

	ifstream fin;
	fin.open("2.txt");

	fin.get(a[i]);
	while (!fin.eof())
	{
		i++;
		fin.get(a[i]);
	}

	fin.close();

	maxi = i;
	i = 0;

	ifstream Fin;
	Fin.open("1.txt");

	while (!Fin.eof())
	{
		Fin.get(b[j]);
		j++;
	}

	Fin.close();

	maxj = j;
	j = 0;

	ofstream fout;
	fout.open("1.txt");

	while (i < maxi - 1)
	{
		fout << a[i];
		i++;
	}

	while (j < maxj - 1)
	{
		fout << b[j];
		j++;
	}

	fout.close();

	return 0;
}