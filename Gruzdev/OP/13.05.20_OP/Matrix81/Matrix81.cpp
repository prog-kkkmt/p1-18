/** Matrix81. Дана квадратная матрица A порядка M. Найти среднее арифметическое элементов ее побочной диагонали, т. е. диагонали, содержащей следующие элементы:
	A1,M,    A2,M−1,    A3,M−2,    …,    AM,1. */
// Груздев Р.И. 13.05.2020

#include <iostream>
using namespace std;

int main(){
	size_t m;
	double sum = 0;
	cout << "Input M: ";
	cin >> m;
	int mtrx[m][m];
	cout << "Input mtrx M x M:" << endl;
	for (size_t i = 0; i < m; ++i)
		for (size_t j = 0; j < m; ++j)
			cin >> mtrx[i][j];

	for (size_t i = 0, j = m; i != m; i++)
		sum += mtrx[i][--j];

	cout << endl << "Sred. arif. = " << sum / m << endl; 

	return 0;
}
