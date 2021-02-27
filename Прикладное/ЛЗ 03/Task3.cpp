#include <iostream>

using namespace std;

void imet()
{
    int n = 0;
    cin >> n;
    if (n == 0)
    {
        return;
    }
    imet();
    cout << n << ' ';
}

int main()
{
    imet();
	return 0;
}
