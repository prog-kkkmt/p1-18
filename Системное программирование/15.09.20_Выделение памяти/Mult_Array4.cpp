#include <iostream>

/**
Эта программа создает двумерный массив 5 × 4 более эфективно.
*/

using namespace std;

int main()
{
    int ** m = new int * [5];
    m[0] = new int[5 * 4];
    for (size_t i = 1; i != 5; ++i)
        m[i] = m[i - 1] + 4;

    cout << endl;
    for (size_t i = 1; i != 5; ++i)
        cout << m[i] << ' ';
    return 0;
}
