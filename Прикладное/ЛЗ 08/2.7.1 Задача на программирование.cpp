int ** transpose(const int * const * m, unsigned rows, unsigned cols)
{
    int **matrix = new int*[cols];
    matrix[0] = new int [rows * cols];
    for (unsigned i = 1; i != cols; ++i)
        matrix[i] = matrix[i - 1] + rows;

    for (unsigned i = 0; i < cols; ++i) {
        for (unsigned j = 0; j < rows; ++j) {
                matrix[i][j] = m[j][i];
        }
    }
    return matrix;
}
