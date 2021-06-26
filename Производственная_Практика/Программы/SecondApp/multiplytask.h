#ifndef MULTIPLYTASK_H
#define MULTIPLYTASK_H
#include <QObject>
#include <QRunnable>
#include <QVector>
#include "matrix.h"

class MultiplyTask : public QObject
{
    Q_OBJECT
private:
    QVector<int> firstRow;
    QVector<int> secondRow;
    int length;
    int x, y;
public:
    MultiplyTask(const Row& firstRow, const Row& secondRow, int x, int y);
public slots:
    void doWork();
signals:
    void returnResult(int result, int x, int y);
    void finished();
};

#endif // MULTIPLYTASK_H
