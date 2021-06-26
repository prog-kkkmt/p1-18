#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "device.h"
#include <QMessageBox>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    initSDK();
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
    clearSDK();
}

void MainWindow::on_btnGetVer_clicked()
{
    QString ip = ui->editAddress->text();
    int     port =  ui->editPort->text().toInt();
    QString login = ui->editLogin->text();
    QString password = ui->editPassword->text();
    QString version;

    Device dev;
    dev.login(ip, port, login, password);
    version = dev.getSoftwareVersion();
    dev.logout();

    ui->labelVersion->setText(version);
}
