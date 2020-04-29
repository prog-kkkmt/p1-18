#include <iostream>

using namespace std;

int ** create_array2d(size_t a, size_t b)
{
    int ** m = new int *[a];
    for (size_t i = 0; i != a; ++i)
        m[i] = new int[b];
    return m;
}
void free_array2d(int ** m, size_t a, size_t b)
{
    for (size_t i = 0; i != a; ++i)
        delete [] m[i];
    delete [] m;
}

int main()
{
    int a, b;
    cin >> a >> b;
    cout << create_array2d(a, b) << ' ';
    free_array2d(create_array2d(a, b), a, b);
    return 0;
}
