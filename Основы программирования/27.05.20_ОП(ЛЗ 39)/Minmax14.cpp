#include <iostream>

/**
М. Э. Абрамян
Дано число B (> 0) и набор из десяти чисел.
Вывести минимальный из тех элементов набора, которые больше B,
а также его номер. Если чисел, больших B, в наборе нет, то дважды вывести 0.
Митюшин Пётр
*/

int main()
{
    int b;
    std::cin >> b;
    int arr[10];
    for(int i = 0; i < 10; ++i)
    {
        std::cin >> arr[i];
    }
    int arr_min = arr[0], index_min;
    for(int i = 0; i < 10; ++i)
    {
        if (arr_min > arr[i] && arr[i] > b)
        {
            arr_min = arr[i];
            index_min = i;
        }
    }
    std::cout << "Elem: " << arr_min << "Index Min: " << index_min << std::endl;
    return 0;
}
