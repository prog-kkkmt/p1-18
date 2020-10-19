#include <iostream>
#include <fstream>
//Text6. Даны два текстовых файла. Добавить в конец первого файла содержимое второго файла.
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");
	const int size = 1000;
	char a[size];
	int i = 0;
	int max;

	ifstream fin;
	fin.open("2.txt");

	fin.get(a[i]);

	while (!fin.eof())
	{
		i++;
		fin.get(a[i]);
	}

	fin.close();

	max = i;
	i = 0;

	ofstream fout;
	fout.open("1.txt", ofstream::app);

	fout << a[i];

	while (i < max - 1)
	{
		++i;
		fout << a[i];
	}

	fout.close();

	return 0;
}
