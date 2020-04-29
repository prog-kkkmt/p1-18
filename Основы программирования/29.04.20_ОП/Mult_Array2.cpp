#include <iostream>

int main()
{
    int * m1d = new int[100]; //для выделения одномерных динамических массивов обычно используют оператор new []
    int ** m = new int * [5];
    for (size_t i = 0; i != 5; ++i)
    {
        m[i] = new int[4];
    }
    return 0;
}
