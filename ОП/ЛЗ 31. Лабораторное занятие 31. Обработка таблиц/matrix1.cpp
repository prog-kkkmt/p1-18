#include <iostream>
/*Matrix1. Даны целые положительные числа M и N.
Сформировать целочисленную матрицу размера M × N,
у которой все элементы i-й строки имеют значение
10·i (i = 1, …, M).*/
using namespace std;

int main()
{
	setlocale(LC_ALL, "ru");

	int n;
	cin >> n;

	const int M = 3;
	const int N = 5;

	int mat[M][N];

	int i, j;

	for (i = 0; i < M; i++)
		for (j = 0; j < N; j++)
			cin >> mat[i][j];

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
			if (i == n)
			{
				mat[i][j] *= 10;
				cout << mat[i][j] << '\t';
			}
			else
				cout << mat[i][j] << '\t';
		cout << endl;
	}
	return 0;
}