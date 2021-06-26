#include "matrix.h"

Matrix loadMatrixFromFile(const QString& filename)
{
    QFile inputFile(filename);
    if (!inputFile.open(QIODevice::ReadOnly | QIODevice::Text))
        throw std::runtime_error(("Cannot open file: "+filename).toStdString());
    QTextStream stream(&inputFile);
    int rows, cols;
    stream >> cols >> rows;
    stream.readLine();
    Matrix matrix(rows, Row(cols));
    for (int y=0; y < rows; y++)
    {
        QString s = stream.readLine();
        std::stringstream iss(s.toStdString());
        for (int x=0; x < cols; x++)
          iss >> matrix[y][x];
    }

    return matrix;
}
