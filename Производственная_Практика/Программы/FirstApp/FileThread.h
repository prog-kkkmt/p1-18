#pragma once

#include <QThread>
#include <QString>
#include <QVector>
#include <QTextStream>
#include <QFile>
#include <QMap>
#include <QPair>

class FileThread : public QThread
{
    Q_OBJECT
private:
    QMap<int, QPair<int, QString>> queue;
    int fileCount;
    int nextFileId = 0;
    void run() override;
public:
    FileThread(int fileCount, QObject* parent = Q_NULLPTR);
signals:
    void returnStatus(const QString& msg);
    void returnLineToGui(const QString& s);
    void stopLoop();
public slots:
    void writeString(int hash,int fileId, const QString& str);
    void readerThreadFinished(int fileId);
};