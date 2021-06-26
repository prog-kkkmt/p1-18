#pragma once

#include <QtWidgets/QMainWindow>
#include <QString>
#include <QMutex>
#include <QThread>
#include <QFile>
#include <QTextStream>
#include "FileThread.h"
#include "ui_FirstApp.h"

class FirstApp : public QMainWindow
{
    Q_OBJECT

public:
    FirstApp(QWidget *parent = Q_NULLPTR);

public slots:
    void addLine(const QString& line);
    void threadStatus(const QString& msg);
    void btnStart_clicked(bool checked);
    void btnOpenFile1_clicked(bool checked);
    void btnOpenFile2_clicked(bool checked);
    void btnOpenFile3_clicked(bool checked);

private:
    Ui::FirstAppClass ui;

    QString path1, path2, path3;
    QMutex* mutex = nullptr;
    QFile* file = nullptr;
    QTextStream* stream = nullptr;
    FileThread* threadWriter = nullptr;
    QVector<QThread*> threads;
};
