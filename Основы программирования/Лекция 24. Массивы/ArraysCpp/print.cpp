#include <iostream>
/** Печать */
void print(int *v, int n) {
    for (int i = 0; i < n; i++)
        std::cout << *(v+i) << (i < n-1 ? ", " : "\n");
}
