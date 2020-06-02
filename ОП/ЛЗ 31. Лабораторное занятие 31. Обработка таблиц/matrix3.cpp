#include <iostream>
#include <vector>
/*
Matrix3. Даны целые положительные числа M, N и набор из M чисел.
Сформировать матрицу размера M × N, у которой в каждом столбце
содержатся все числа из исходного набора (в том же порядке).
*/

int main()
{
	setlocale(LC_ALL, "ru");

	int M, N;
	std::cin >> M >> N;
	//array:
	std::vector <int> arr(M);

	int i, j;
	//matrix:
	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));
	
	for (i = 0; i < M; i++)
	{
		std::cin >> arr[i];
	}

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			std::cout << arr[i] << '\t';
		}
		std::cout << std::endl << std::endl;
	}

	return 0;
}