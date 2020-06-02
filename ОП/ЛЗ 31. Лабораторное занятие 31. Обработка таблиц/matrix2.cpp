#include <iostream>
#include <vector>
#include <array>
/*
Matrix2. Даны целые положительные числа M и N.
Сформировать целочисленную матрицу размера M × N,
у которой все элементы J-го столбца имеют значение
5·J (J = 1, …, N).
*/
int main()
{
	setlocale(LC_ALL, "ru");
	
	int M;
	int N;
	std::cin >> M >> N;

	int i, j;

	int n;
	std::cin >> n;

	//int mat[M][N];
	std::vector<std::vector<int> > mat = std::vector<std::vector<int> >(M, std::vector<int>(N));// Вектор <вектор <формат>  >(Число, Вектор(Число))
																							    //						   (в скобках - размер vec)
	
	for (i = 0; i < M; i++)
		for (j = 0; j < N; j++)
			std::cin >> mat[i][j];

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (j == n)
			{
				mat[i][j] *= 5;
				std::cout << mat[i][j] << '\t';
			}
			else
				std::cout << mat[i][j] << '\t';
		}
		std::cout << std::endl;
	}
	return 0;
}



