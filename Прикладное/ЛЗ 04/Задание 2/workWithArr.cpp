#include "workWithArr.h"

void fillingArray(int arr[], const int length)
{
    for (int i = 1; i < length; ++i)
        std::cin >> arr[i];
}

int findMax(int arr[], const int length)
{
    int max_elem = arr[0];
    for (int i = 1; i < length; ++i) {
        if (max_elem < arr[i])
            max_elem = arr[i];
    }
    return max_elem;
}

int summArray(int arr[], const int length)
{
    int summ = 0;
    for (int i = 0; i < length; ++i)
        summ += arr[i];
    return summ;
}

void Print(int arr[], const int length)
{
    for (int i = 0; i < length; ++i)
        std::cout << arr[i] << ' ';
    std::cout << std::endl;
}

void menu()
{
    std::cout << "1. Filling array" << std::endl
            << "2. Find max elem" << std::endl
            << "3. Summ" << std::endl
            << "4. Print" << std::endl
            << "5. Exit" << std::endl;
}
