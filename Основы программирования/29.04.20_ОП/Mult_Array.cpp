#include <iostream>

using namespace std;

int main()
{
    int m2d[2][3] = { {1, 2, 3}, {4, 5, 6} };
    for( size_t i = 0; i != 2; ++i)
    {
        for( size_t j = 0; j != 3; ++j)
        {
            cout << m2d[i][j] << ' ';
        }
        cout << endl;
    }
    return 0;
}
