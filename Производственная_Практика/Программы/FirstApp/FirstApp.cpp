#include "FirstApp.h"
#include "FileThread.h"
#include "FileReaderThread.h"
#include <QPushButton>
#include <QMessageBox>
#include <QFileDialog>
#include <QStandardPaths>

FirstApp::FirstApp(QWidget *parent)
    : QMainWindow(parent)
{
    ui.setupUi(this);

    QObject::connect(ui.btnStart, &QPushButton::clicked, this, &FirstApp::btnStart_clicked);
    QObject::connect(ui.btnOpenFile1, &QPushButton::clicked, this, &FirstApp::btnOpenFile1_clicked);
    QObject::connect(ui.btnOpenFile2, &QPushButton::clicked, this, &FirstApp::btnOpenFile2_clicked);
    QObject::connect(ui.btnOpenFile3, &QPushButton::clicked, this, &FirstApp::btnOpenFile3_clicked);
}

void FirstApp::addLine(const QString& line)
{
    ui.listWidget->addItem(line);
}

void FirstApp::threadStatus(const QString& msg)
{
    ui.statusBar->showMessage(msg);
}

void FirstApp::btnStart_clicked(bool checked)
{
    if (path1.isEmpty() || path2.isEmpty() || path3.isEmpty())
    {
        ui.statusBar->showMessage("Select all 3 files");
        return;
    }

    threadWriter = new FileThread(3, this);
    QObject::connect(threadWriter, &FileThread::returnLineToGui, this, &FirstApp::addLine);
    QObject::connect(threadWriter, &QThread::finished, threadWriter, &QThread::deleteLater);
    threadWriter->start();

    int i=0;
    for (QString path : { path1, path2, path3 })
    {
        FileReaderThread* thread = new FileReaderThread(path, i++, this);
        QObject::connect(thread, &FileReaderThread::resultLine, threadWriter, &FileThread::writeString);
        QObject::connect(thread, &FileReaderThread::resultGui, this, &FirstApp::addLine);
        QObject::connect(thread, &FileReaderThread::threadFinished, threadWriter, &FileThread::readerThreadFinished);
        QObject::connect(thread, &QThread::finished, thread, &QThread::deleteLater);
        thread->start();
    }
}

void FirstApp::btnOpenFile1_clicked(bool checked)
{
    path1 = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    if (!path1.isEmpty()) 
        ui.label->setText(path1);
}

void FirstApp::btnOpenFile2_clicked(bool checked) 
{
    path2 = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    if (!path2.isEmpty())
        ui.label_2->setText(path2);
}

void FirstApp::btnOpenFile3_clicked(bool checked)
{
    path3 = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    if (!path3.isEmpty())
        ui.label_3->setText(path3);
}