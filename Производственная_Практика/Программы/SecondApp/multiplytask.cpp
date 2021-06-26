#include "multiplytask.h"

MultiplyTask::MultiplyTask(const Row& firstRow, const Row& secondRow, int x, int y)
{
    this->firstRow = firstRow;
    this->secondRow = secondRow;
    this->length = firstRow.size();
    this->x = x;
    this->y = y;
}

void MultiplyTask::doWork(){
    int result = 0;
    for (int i=0; i < firstRow.size(); i++)
    {
        result += firstRow[i]*secondRow[i];
    }
    emit returnResult(result, x, y);
    emit finished();
}
