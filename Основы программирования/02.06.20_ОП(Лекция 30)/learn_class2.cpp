#include "learn_class2_matrix.h"

CMatrix::CMatrix(int m, int n)
{
    M = m;
    N = n;
    ppx = new int *[M];
    for (int i = 0; i < M; i++)
    {
        ppx[i] = new int [N];
    }
}
CMatrix::~CMatrix()
{
    for (int i = 0; i < M; i++)
    {
        delete [] ppx[i];
        delete [] ppx;
    }
}

void CMatrix::Gen_elem()
{
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            ppx[i][j] = rand() % 100 - 50;
        }
    }
}

void CMatrix::Print_elem()
{
    printf("Matrica:\n");
    for (int i = 0; i < M; i++)
    {
        for (int j = 0; j < N; j++)
        {
            printf("Matrica:\n");
            printf("\t%d", ppx[i][j]);
        }
        printf("\n");
    }
}

int main()
{
    return 0;
}
