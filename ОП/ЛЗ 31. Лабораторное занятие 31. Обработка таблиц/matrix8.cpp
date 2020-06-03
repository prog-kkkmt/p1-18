#include <iostream>
#include <vector>
/*
Matrix8. Дана матрица размера M × N и целое число K (1 ≤ K ≤ N). Вывести элементы K-го столбца данной матрицы.
*/
int main()
{
	setlocale(LC_ALL, "ru");

	int i, j;

	int M, N, K;
	std::cin >> M >> N >> K;

	std::vector <std::vector <int> > mat = std::vector <std::vector 
		<int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
		for (j = 0; j < N; j++)
			std::cin >> mat[i][j];

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (j == K)
				std::cout << mat[i][j] << '\t';
		}
		std::cout << std::endl;
	}
	return 0;
}