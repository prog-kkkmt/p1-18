#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "multiplytask.h"
#include <QFileDialog>
#include <QStandardPaths>
#include <QThread>
#include <QFile>
#include <QTextStream>
#include <QTableWidgetItem>
#include <QMessageBox>
#include <sstream>
#include <exception>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    qRegisterMetaType<Row>("Row");
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_btnSelectInputFile1_clicked()
{
    inputFilename1 = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    if (!inputFilename1.isEmpty())
        ui->labelInputFile1->setText(inputFilename1);

    try {
        matrix1 = loadMatrixFromFile(inputFilename1);
    } catch (std::runtime_error e) {
        QMessageBox::warning(this, "", e.what());
    }
    ui->tableMatrix1->setRowCount(matrix1.size());
    ui->tableMatrix1->setColumnCount(matrix1[0].size());
    for (int y = 0; y < matrix1.size(); y++)
        for (int x = 0; x < matrix1[0].size(); x++)
        {
            QTableWidgetItem *item = new QTableWidgetItem(QString::number(matrix1[y][x]));
            ui->tableMatrix1->setItem(y, x, item);
        }
}

void MainWindow::on_btnSelectInputFile2_clicked()
{
    inputFilename2 = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    if (!inputFilename2.isEmpty())
        ui->labelInputFile2->setText(inputFilename2);

    try {
        matrix2 = loadMatrixFromFile(inputFilename2);
    } catch (std::runtime_error e) {
        QMessageBox::warning(this, "", e.what());
    }
    ui->tableMatrix2->setRowCount(matrix2.size());
    ui->tableMatrix2->setColumnCount(matrix2[0].size());
    for (int y = 0; y < matrix2.size(); y++)
        for (int x = 0; x < matrix2[0].size(); x++)
        {
            QTableWidgetItem *item = new QTableWidgetItem(QString::number(matrix2[y][x]));
            ui->tableMatrix2->setItem(y, x, item);
        }
}

void MainWindow::on_btnExecute_clicked()
{
    if (matrix1.size() != matrix2[0].size())
    {
        QMessageBox::warning(this, "", "Rows count of first matrix is not equal to columns count of second matrix.");
        return;
        //throw std::runtime_error("Rows count of first matrix is not equal to columns count of second matrix.");
    }

    outputMatrix = Matrix(matrix1.size(), Row(matrix2[0].size()));
    ui->tableOutputMatrix->setRowCount(matrix1.size());
    ui->tableOutputMatrix->setColumnCount(matrix2[0].size());

    for (int y = 0; y < matrix1.size(); y++)
    {
        for (int x = 0; x < matrix2[0].size(); x++)
        {
            Row secondRow;
            for (Row row : matrix2)
                secondRow.push_back(row[x]);

            MultiplyTask *task = new MultiplyTask(matrix1[y], secondRow, x, y);
            connect(this, &MainWindow::startProcessing, task, &MultiplyTask::doWork);
            connect(task, &MultiplyTask::returnResult, this, &MainWindow::handleResult);

            thread = new QThread(this);
            task->moveToThread(thread);
            connect(task, &MultiplyTask::finished, thread, &QThread::quit);
            connect(thread, &QThread::finished, task, &QObject::deleteLater);
            thread->start();
        }
        startProcessing();
    }
}

void MainWindow::on_btnSaveResult_clicked()
{
    QString filename = QFileDialog::getSaveFileName(this,
        tr("Save File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Text Files (*.txt)"));

    QFile outputFile(filename);
    if (!outputFile.open(QIODevice::WriteOnly | QIODevice::Text))
        throw std::runtime_error(("Cannot open file: "+filename).toStdString());
    QTextStream stream(&outputFile);

    for (int y = 0; y < outputMatrix.size(); y++)
    {
        for (int x = 0; x < outputMatrix[0].size(); x++)
            stream << outputMatrix[y][x] << " ";
        stream << "\n";
    }
}

void MainWindow::handleResult(int result, int x, int y)
{
    outputMatrix[y][x] = result;

    QTableWidgetItem *item = new QTableWidgetItem(QString::number(result));
    ui->tableOutputMatrix->setItem(y, x, item);
}
