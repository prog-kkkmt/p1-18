#include "workWithArr.h"

int main()
{
    int nc, exit = 0;
    const int length = 10;
    int arr[length];
    while (1)
    {
        menu();
        std::cout << "Enter your choice: ";
        std::cin >> nc;
        switch (nc)
        {
            case 1: fillingArray(arr, length); break;
            case 2: std::cout << findMax(arr, length) << std::endl; break;
            case 3: std::cout << summArray(arr, length) << std::endl; break;
            case 4: Print(arr, length); break;
            case 5: exit = 1; break;
            default: std::cout << "you must enter a number from the range 1 - 5" << std::endl;
        }
        if (exit) {
            break;
        }
    }
    return 0;
}
