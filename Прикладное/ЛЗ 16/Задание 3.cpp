#include <iostream>

int sum (int, int);
double sum (double, double);

bool gt(int a, int b) { //great then
    return a > b ? a : b;
}

int my_abs(int a) {
    return a < 0 ? a * -1 : a;
}

double my_abs(double a) {
    return a < 0 ? a * -1 : a;
}

bool gt(double a, double b) { //great then
    return a > b ? a : b;
}

int main()
{

    return 0;
}

int sum(const int a, const int b) {
    return a + b;
}

double sum(const double a, const double b) {
    return a + b;
}

int div(const int a, const int b) {
    return b != 0 ? a / b : 1;
}
double div(const double a, const double b) {
    return b != 0 ? a / b : 1;
}

bool eq(const int a, const int b) { //equal
    return a == b ? 1 : 0;
}

bool eq(const double a, const double b) { //equal
    return a == b ? 1 : 0;
}
