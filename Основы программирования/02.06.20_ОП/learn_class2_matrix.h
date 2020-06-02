#ifndef _matrix_
#define _matrix_
#include <iostream>
#include <stdlib.h>
#include <time.h>
class CMatrix
{
private:
    int M;
    int N;
    int **ppx;

public:
    CMatrix(int m = 1, int n = 1);
    ~CMatrix();
    void Gen_elem();
    void Print_elem();
};
#endif
