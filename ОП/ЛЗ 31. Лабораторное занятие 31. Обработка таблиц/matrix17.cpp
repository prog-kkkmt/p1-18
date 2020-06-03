#include <iostream>
#include <vector>
/*
Matrix17. Дана матрица размера M × N и целое число K (1 ≤ K ≤ M).
Найти сумму и произведение элементов K-й строки данной матрицы.
*/
int main()
{
	setlocale(LC_ALL, "ru");

	int i, j, sum = 0, xN = 1;

	int M, N, K;
	std::cin >> M >> N >> K;

	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
		for (j = 0; j < N; j++)
			std::cin >> mat[i][j];

	std::cout << std::endl;

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
			std::cout << mat[i][j] << '\t';
		std::cout << std::endl;
	}

	std::cout << std::endl;

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (i == K)
			{
				sum += mat[i][j];
				xN *= mat[i][j];
			}
		}
	}

	std::cout << sum << std::endl << std::endl;
	std::cout << xN << std::endl;

	return 0;
}
