#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QPixmap>
#include <QFileDialog>
#include <QStandardPaths>
#include <QMessageBox>
#include <QtDebug>
#include <QPainter>
#include <QLineSeries>
#include <QMap>
#include <QPair>
#include <array>
#include <cmath>
#include <imageprocessing.h>

QMap<QPair<double, double>, QString> brightnessLevels {
    {QPair<double, double>{0, 85}, "Слишком темное"},
    {QPair<double, double>{85, 170}, "Нормальное"},
    {QPair<double, double>{170, 256}, "Засвеченное"}
};

QMap<QPair<double, double>, QString> contrastLevels {
    {QPair<double, double>{0, 0.16}, "Мало-контрастное"},
    {QPair<double, double>{0.16, 0.32}, "Нормальное"},
    {QPair<double, double>{0.32, 0.5}, "Высоко-контрастное"}
};

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

QString rangeSearch(QMap<QPair<double, double>, QString> strings, double value)
{
    for (QPair<double, double> range : strings.keys())
        if ((range.first <= value) && (range.second > value))
            return strings[range];
}

void MainWindow::on_btnSelectFile1_clicked()
{
    QString inputFilename1 = QFileDialog::getOpenFileName(this,
            tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("Image Files (*.bmp)"));

    if (inputFilename1.isEmpty())
        return;

    QImage image(inputFilename1);

    Histogram hist = getImageHistogram(image);

    QLineSeries* series = new QLineSeries();
    for (int i=0; i<255; i++)
        series->append(i, hist[i]);
    series->setName(inputFilename1.split('/').last());

    ui->chart->chart()->addSeries(series);

    ImageCharacteristics chars = processImage(image);
    qDebug() << "Contrast: " <<chars.contrast;
    qDebug() << "Exposure: " << chars.exposure;
    ui->labelBrightness->setText(rangeSearch(brightnessLevels, chars.exposure)+' '+QString::number(chars.exposure));
    ui->labelContrast->setText(rangeSearch(contrastLevels, chars.contrast)+' '+QString::number(chars.contrast));
}
