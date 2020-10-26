#include <iostream>

int main()
{
	int a[5];

	for (int i = 0; i < 5; i++) std::cin >> a[i];


	for (int i = 1; i < 5; i++)
		for (int j = 0; j < 4; j++)
		{
			if (a[j] > a[j + 1])
			{
				int temp = a[j];
				a[j] = a[j + 1];
				a[j + 1] = temp;
			}
		}

	for (auto i : a) std::cout << i << ' ';

	std::cout << std::endl;

	return 0;
}
