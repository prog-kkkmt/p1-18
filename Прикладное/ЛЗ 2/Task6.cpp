#include <iostream>

int logarifm(int x){
    int result = 1, i = -1;
    while (result <= x){
        result *= 2;
        ++i;
    }
    return i;
}

int main()
{
    int n, nc = 0, cont, elem;
    std::cin >> cont;
    while (nc < cont){
        std::cin >> elem;
        std::cout << logarifm(elem) << std::endl;
        ++nc;
    }
    return 0;
}
