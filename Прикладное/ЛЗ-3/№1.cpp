#include <iostream>

unsigned gcd(unsigned a, unsigned b)
{
    if (a == 0)
        return b;

    if (b == 0)
        return a;

    if(a >= b)
        return gcd(a % b, b);

    if(b >= a)
        return gcd(a, b % a);
}

int main() {
    unsigned a, b;
    std::cin >> a >> b;
    std::cout << gcd(a, b);


return 0;
}
