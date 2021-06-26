#include "FileReaderThread.h"
#include <QTextStream>
#include <QFile>

FileReaderThread::FileReaderThread(const QString& path, int fileId, QObject* parent)
    : QThread(parent)
{
    this->path = path;
    this->fileId = fileId;
}

int combine(int a, int b) {
    int times = 1;
    while (times <= b)
        times *= 10;
    return a * times + b;
}

void FileReaderThread::run()
{
    QFile file(path);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text))
    {
        //emit returnStatus("Cannot open file: " + path);
        return;
    }
    QTextStream stream(&file);

    int i = 1;
    while (!stream.atEnd()) {
        QString line = stream.readLine();
        emit resultLine(combine(i, fileId+1), fileId, line);
        i++;
    }
    emit resultLine(combine(i, fileId+1), fileId, QString()); // EOF

    /*emit resultGui(QString::number(fileId));*/
    emit threadFinished(fileId);
}