#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtSql>

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
    void on_btnSelectFile_clicked();
    void on_btnStart_clicked();
    void on_comboBox_currentTextChanged(const QString &arg1);

    void on_btnFilter_clicked();

private:
    Ui::MainWindow *ui;
    QString dbPath;
    QSqlDatabase sdb;
    int64_t sizeAll;
};
#endif // MAINWINDOW_H
