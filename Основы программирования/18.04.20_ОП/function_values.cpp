#include <iostream>
#include <cmath>

int main() {
    float a, z, y;
    scanf("%f", &a);
    z = 2 * (pow(sin(3 * M_PI - 2 * a), 2.0)* (pow(cos(5 * M_PI + 2 * a), 2.0)));
    printf("%lf\n", z);
    y = 0.25 - 0.25 * sin((2.5) * M_PI - 8.0 * a);
    printf("%lf", y);
    return 0;
}
