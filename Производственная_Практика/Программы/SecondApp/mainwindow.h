#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include "matrix.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE 

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_btnSelectInputFile1_clicked();
    void on_btnSelectInputFile2_clicked();
    void on_btnSaveResult_clicked();
    void on_btnExecute_clicked();

public slots:
    void handleResult(int result, int x, int y);

private:
    Ui::MainWindow *ui;
    QString inputFilename1;
    QString inputFilename2;
    Matrix matrix1;
    Matrix matrix2;
    Matrix outputMatrix;
    QThread* thread;

    void openMatrixFromFile(Matrix* mat);

signals:
    void startProcessing();
};
#endif // MAINWINDOW_H
