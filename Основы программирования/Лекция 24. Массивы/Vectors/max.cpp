#include "max.h"
/** Нахождение максимального */
int max(std::vector <int> v) {
    size_t imax = 0;
    for (size_t i = 1; i < v.size(); i++)
        if (v[i] > v[imax])
            imax = i;
    return v[imax];
}
