#include <iostream>
#include <vector>
/*
Matrix5. Даны целые положительные числа M, N,
число D и набор из M чисел. Сформировать матрицу
размера M × N, у которой первый столбец совпадает
с исходным набором чисел, а элементы каждого
следующего столбца равны сумме соответствующего
элемента предыдущего столбца и числа D
(в результате каждая строка матрицы будет содержать
элементы арифметической прогрессии).
*/
int main()
{
	setlocale(LC_ALL, "ru");

	int i, j;

	int M, N, D;
	std::cin >> M >> N >> D;

	std::vector <int> arr(M);

	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
		std::cin >> arr[i];

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (j > 0)
			{
				arr[i] += D;
				std::cout << arr[i] << '\t';
			}
			else
				std::cout << arr[i] << '\t';
		}
		std::cout << std::endl;
	}

	/*
	for (i; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			std::cout << arr[i] + D;
		}
	}
	*/

	return 0;
}