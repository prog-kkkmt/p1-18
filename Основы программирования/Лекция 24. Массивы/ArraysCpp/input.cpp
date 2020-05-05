#include <iostream>
/** Заполнение */
void input(int *v, int n) {
    for (int i = 0; i < n; i++) {
        std::cout << "v[" << i << "]=";
        std::cin >> *(v+i);
    }
}
