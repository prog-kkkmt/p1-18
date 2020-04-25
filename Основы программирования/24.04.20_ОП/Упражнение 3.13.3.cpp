#include <iostream>
#include <vector>
/**
Александр Смаль, Михаил Кринкин
Липпман, Стенли Б., Лажойе, Жози, Му, Барбара Э.
Измените программу так,
чтобы она отобразила сумму первого и последнего элементов,
затем сумму второго и предпоследнего и т.д.
Митюшин Пётр
*/

int main()
{
    int n, size_array, summ;
    std::cin >> n;
    std::vector <int> array(n);
    size_array = n - 1;
    for(int i = 0; i < n; ++i)
    {
        std::cin >> array[i];
    }
    for(int i = 0; i < n; ++i)
    {
        summ = array[i] + array[size_array];
        std::cout << summ << std::endl;
        --size_array;
    }
    return 0;
}
