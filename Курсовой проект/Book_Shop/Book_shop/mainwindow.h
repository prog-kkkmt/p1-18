#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "orderwindow.h"

#include <QApplication>
#include <QMainWindow>
#include <QTextEdit>
#include <QKeyEvent>
#include <QTextStream>
#include <QMessageBox>
#include <QStandardItemModel>
#include <QStandardItem>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>
#include <QErrorMessage>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    orderwindow *orderWindow;
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void keyPressEvent(QKeyEvent *event);
    void on_EndOrderFormat_clicked();
    void on_buttonFormOrder_clicked();

private:
    Ui::MainWindow *ui;
};

QString formPath(QString path);

#endif // MAINWINDOW_H
