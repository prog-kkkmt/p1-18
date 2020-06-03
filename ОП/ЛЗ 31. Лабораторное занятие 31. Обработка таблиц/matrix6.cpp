#include <iostream>
#include <vector>
/*
Matrix6. Даны целые положительные числа M, N, число D и набор из N чисел.
Сформировать матрицу размера M × N, у которой первая строка совпадает с исходным набором чисел,
а элементы каждой следующей строки равны соответствующему элементу предыдущей строки,умноженному на D
(в результате каждый столбец матрицы будет содержать элементы геометрической прогрессии).
*/

int main()
{
	setlocale(LC_ALL, "ru");

	int i, j;

	int M, N, D;
	std::cin >> M >> N >> D;

	std::vector <int> arr(N);

	for (j = 0; j < N; j++)
		std::cin >> arr[j];
	
	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (i > 0)
			{
				arr[j] *= D;
				std::cout << arr[j] << '\t';
			}

			else
				std::cout << arr[j] << '\t';
		}

		std::cout << std::endl;
	}

	return 0;
}