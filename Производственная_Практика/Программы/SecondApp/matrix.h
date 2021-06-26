#ifndef MATRIX_H
#define MATRIX_H
#include <QMatrix>
#include <QFile>
#include <QTextStream>

typedef QVector<int> Row;
typedef QVector< Row > Matrix;

Matrix loadMatrixFromFile(const QString& filename);

#endif // MATRIX_H
