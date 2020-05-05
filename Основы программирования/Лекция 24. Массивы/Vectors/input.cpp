#include "input.h"

/** Заполнение */
void input(std::vector <int> &v, size_t n) {
    for (size_t i = 0; i < n; i++) {
        std::cout << "v[" << i << "]=";
        std::cin >> v[i];
    }
}
