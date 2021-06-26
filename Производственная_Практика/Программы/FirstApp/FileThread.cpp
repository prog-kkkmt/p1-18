#include "FileThread.h"
#include <QEventLoop>
#include <algorithm>

FileThread::FileThread(int fileCount, QObject* parent)
    : QThread(parent)
{
    this->fileCount = fileCount;
}

void FileThread::run()
{
    QFile outputFile("output.txt");
    if (!outputFile.open(QIODevice::WriteOnly | QIODevice::Text))
        return;
    QTextStream outputStream(&outputFile);

    QEventLoop loop(this);
    while (true)
    {
        loop.processEvents();

        // ��������� ��� ��� � ����� ��� ������������� �� ����� ������
        if (queue.size() >= 3)
        {
            if (queue.values()[0].first == 0 && queue.values()[1].first == 1 && queue.values()[2].first == 2)
            {
                if (queue.values()[0].second.isEmpty() || queue.values()[1].second.isEmpty() || queue.values()[2].second.isEmpty())
                    break;

                emit returnLineToGui(queue.values()[0].second);
                emit returnLineToGui(queue.values()[1].second);
                emit returnLineToGui(queue.values()[2].second);
                outputStream << queue.values()[0].second << "\n";
                outputStream << queue.values()[1].second << "\n";
                outputStream << queue.values()[2].second << "\n";
                
                queue.remove(queue.keys()[0]);
                queue.remove(queue.keys()[0]);
                queue.remove(queue.keys()[0]);
            }
        }
    }
    emit returnLineToGui("--------------");
}

void FileThread::writeString(int hash, int fileId, const QString& str)
{
    queue[hash] = QPair<int, QString>(fileId, str);
}

void FileThread::readerThreadFinished(int fileId)
{
    
}


/* 
main ������� 3 ������ � �������� � ��� ��� ������ ��� ������
����� ������� 1 �����
��� ��� ������ ����� � ���� ���� ����� �������
� �� ������ ������� �� � ���� � ��� ������� � ������� 3 ������ ���� �������
*/