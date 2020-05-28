#include <iostream>
#include <fstream>
//Text11. Дан текстовый файл. Продублировать в нем все пустые строки.
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");

	int i = 0;
	char a[1000];
	int max;

	ifstream fin;
	fin.open("1.txt");

	while (!fin.eof())
	{
		i++;
		if (i >= 1)
		{
			if (a[i - 2] == '\n')
			{
				if (a[i - 1] == '\n')
				{
					a[i] = '\n';
					i++;
				}
			}
		}
		fin.get(a[i]);

	}

	fin.close();

	max = i;
	i = 1;

	ofstream fout;
	fout.open("1.txt");

	while (i < max)
	{
		fout << a[i];
		i++;
	}

	fout.close();

	return 0;
}