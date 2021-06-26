#pragma once

#include <QThread>
#include <QString>

class FileReaderThread : public QThread
{
	Q_OBJECT
private:
    QString path;
    int fileId;
    void run() override;
public:
    FileReaderThread(const QString& path, int fileId, QObject* parent = Q_NULLPTR);
signals:
    void resultLine(int hash, int fileId, const QString& s);
    void resultGui(const QString& s);
    void threadFinished(int fileId);
};

