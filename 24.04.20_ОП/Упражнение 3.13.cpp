#include <iostream>
#include <vector>

/**
Александр Смаль, Михаил Кринкин
Липпман, Стенли Б., Лажойе, Жози, Му, Барбара Э.
Прочитайте в вектор набор целых чисел. Вычислите и отобразите сумму каждой пары смежных элементов в векторе.
Если количество элементов нечетно, сообщите пользователю об этом и отобразите значение последнего элемента без суммирования.
Измените программу так, чтобы она отобразила сумму первого и последнего элементов, затем сумму второго и предпоследнего и т.д.
Митюшин Пётр
*/

int main()
{
    int n, summ;
    std::cin >> n;
    std::vector <int> array(n);
    for(int i = 0; i < n; ++i)
    {
        std::cin >> array[i];
    }
    if (n % 2 == 0)
    {
        for(int i = 0; i < n - 1; ++i)
        {
            summ = array[i] + array[i + 1];
            std::cout << summ << " " << std::endl;
        }
    }
    else if (n % 2 != 0)
    {
        std::cout << "the number of elements is odd" << std::endl;
        for(int i = 0; i < n - 2; ++i)
        {
            summ = array[i] + array[i + 1];
            std::cout << summ << " " << std::endl;
        }
        std::cout << array[n - 1] << std::endl;
    }
    return 0;
}
