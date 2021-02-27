#include <iostream>

unsigned int gcd(unsigned int a, unsigned int b)
{
    if (a == 0 || b == 0)
        return a + b;

    if (a > b)
        return gcd(b, a % b);
    else
        return gcd(a, b % a);
}

int main()
{
    unsigned int a, b;
    std::cin >> a >> b;
    std::cout << gcd(a, b);
    return 0;
}
