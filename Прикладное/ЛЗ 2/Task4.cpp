#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int a, b, c;
    double d, x1, x2;
    std::cin >> a >> b >> c;
    d = (b * b) - (4 * a * c);
    if (d >= 0){
        x1 = (-b + sqrt(d)) / (2 * a);
        x2 = (-b - sqrt(d)) / (2 * a);
        std::cout << x1 << " " << x2 << std::endl;
    }
    else
        std::cout << "No real roots" << std::endl;
    return 0;
}
