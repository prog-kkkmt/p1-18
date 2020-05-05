#include "sum.h"
/** Нахождение суммы */
int sum(std::vector<int> v) {
    int s = 0;
    for (size_t i = 0; i < v.size(); i++)
        s += v[i];
    return s;
}
