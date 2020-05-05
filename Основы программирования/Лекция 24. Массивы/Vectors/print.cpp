#include "print.h"
/** Печать */
void print(std::vector <int> v) {
    for (size_t i = 0; i < v.size(); i++)
        std::cout << v[i] << (i < v.size()-1 ? ", " : "\n");
}
