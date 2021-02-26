#include <iostream>

void swap_min(int *m[], unsigned rows, unsigned cols)
{
    int min_elem, find_index, tmp;
    for (unsigned i = 0; i < rows; ++i)
    {
        for (unsigned j = 0; j < cols; ++j)
        {
            if (m[i][j] < min_elem){
                min_elem = m[i][j];
                find_index = i;
            }
        }
    }
    for (unsigned i = 0; i < cols; ++i)
    {
        tmp = m[0][i];
        m[0][i] = m[find_index][i];
        m[find_index][i] = tmp;
    }
}
