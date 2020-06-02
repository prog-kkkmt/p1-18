#include <iostream>
#include <vector>
/*
Matrix4. Даны целые положительные числа M, N и набор из N чисел.
Сформировать матрицу размера M × N, у которой в каждой строке
содержатся все числа из исходного набора (в том же порядке).
*/

int main()
{
	setlocale(LC_ALL, "ru");

	int M, N;
	std::cin >> M >> N;

	int i, j;

	std::vector <int> arr(N);

	for (j = 0; j < N; j++)
		std::cin >> arr[j];

	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			std::cout << arr[j] << '\t';
		}
		std::cout << std::endl << std::endl;
	}

	return 0;
}