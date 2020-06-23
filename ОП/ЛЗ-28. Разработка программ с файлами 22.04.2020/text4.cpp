
#include <iostream>
#include <fstream>
/*Text4°. Дан текстовый файл.
Вывести количество содержащихся в нем символов и строк
(маркеры концов строк EOLN и конца файла EOF при подсчете количества символов не учитывать).*/
using namespace std;

int main()
{
	setlocale(LC_ALL, "russian");
	char ch;
	int i = 0;
	int j = 0;

	ifstream fin;
	fin.open("1.txt");

	fin.get(ch);

	while (!fin.eof())
	{
		i++;
		fin.get(ch);
		if (ch == '\n')
			j++;
	}

	fin.close();

	j--;
	i -= j;

	cout << "Количество символов: " << i << endl;
	cout << "Количество строк: " << j;

	return 0;
}
