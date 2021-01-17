#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int a, b, c;
    double d, x1, x2;
    cin >> a >> b >> c;

    d = pow(b, 2) - (4 * a * c);

    if(d >= 0){
        x1 = (-b + sqrt(d)) / (2 * a);
        x2 = (-b - sqrt(d)) / (2 * a);
        cout << x1 << " " << x2 << endl;
    }
    else {
        cout << "No real roots";
    }

    return 0;
}
