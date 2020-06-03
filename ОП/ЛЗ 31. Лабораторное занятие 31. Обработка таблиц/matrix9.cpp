#include <iostream>
#include <vector>
/*
Matrix9. Дана матрица размера M × N.
Вывести ее элементы, расположенные в строках с четными номерами (2, 4, …).
Вывод элементов производить по строкам, условный оператор не использовать.
*/
int main()
{
	setlocale(LC_ALL, "ru");

	int i, j;

	int M, N;
	std::cin >> M >> N;

	std::vector <std::vector <int> > mat = std::vector <std::vector <int> >(M, std::vector <int>(N));

	for (i = 0; i < M; i++)
		for (j = 0; j < N; j++)
			std::cin >> mat[i][j];

	for (i = 0; i < M; i++)
	{
		for (j = 0; j < N; j++)
		{
			if (i % 2 == 0)
				std::cout << mat[i][j] << '\t';
		}
		std::cout << std::endl;
	}

	return 0;
}