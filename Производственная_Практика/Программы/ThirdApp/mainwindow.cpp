#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QFileDialog>
#include <QStandardPaths>
#include <QMessageBox>
#include <QtSql>
#include <QXmlQuery>
#include <QDateTime>
#include <QMetaType>
#include <cmath>
#include "DateTime.h"

struct ListData
{
    QString cameraName;
    int size;
};
Q_DECLARE_METATYPE(ListData)

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    ui->spinBox->setMaximum(pow(2, 31)-1);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_btnSelectFile_clicked()
{
    sdb.close();
    dbPath = QFileDialog::getOpenFileName(this,
        tr("Open File"), QStandardPaths::standardLocations(QStandardPaths::DocumentsLocation)[0], tr("SQLite Database (*.db)"));

    sdb = QSqlDatabase::addDatabase("QSQLITE");
    sdb.setDatabaseName(dbPath);

    if (!sdb.open()) {
        QMessageBox msgBox;
        msgBox.setText("Can't open database file.");
        msgBox.exec();
        return;
    }

    ui->comboBox->clear();
    //ui->comboBox->addItem("All");

    ui->listWidget->clear();

//    QSqlQuery query(R"(SELECT DISTINCT Name FROM Cameras)");
//    while (query.next()) {
//        ui->comboBox->addItem(query.value(0).toString());
//    }
}

void MainWindow::on_btnStart_clicked()
{
    QSqlQuery query1("SELECT Params FROM Settings WHERE ID=1");
    query1.next();

    QXmlQuery qry(QXmlQuery::XPath20);
    qry.setFocus(query1.value(0).toString());
    qry.setQuery("string(/Archive/System/ArchivePath)");

    if (!qry.isValid())
    {
        QMessageBox msgBox;
        msgBox.setText("Query isn't valid");
        msgBox.exec();
        return;
    }
    QStringList results;
    if (!qry.evaluateTo(&results))
    {
        QMessageBox msgBox;
        msgBox.setText("Error while quering xml path: /Archive/System/ArchivePath/text()");
        msgBox.exec();
        return;
    }
    QString archivePath = results.first();

    QSqlQuery query2(R"(
SELECT Cameras.Name, VideoArchive.CreateTime, VideoEvents.FileName, VideoEvents.FileSize
FROM VideoEvents
JOIN Cameras
    ON Cameras.GIndex = VideoEvents.GIndex
JOIN VideoArchive
    ON VideoArchive.ID = VideoEvents.PathID
WHERE Cameras.GType = 1
ORDER BY VideoArchive.CreateTime ASC
)");
    ui->listWidget->clear();
    ui->comboBox->clear();
    sizeAll = 0;
    while (query2.next()) {
        QString path;
        path = archivePath;
        path += '\\' + query2.value(0).toString();
        path += '\\' + DoubleToDateTime(query2.value(1).toDouble()).toString("yyyy_MM_dd");
        path += '\\' + query2.value(2).toString();

        sizeAll += query2.value(3).toInt();

        QListWidgetItem *item = new QListWidgetItem(path+", Size: "+QString::number(query2.value(3).toInt()/1048576.), ui->listWidget);

        item->setData(Qt::UserRole, QVariant::fromValue<ListData>(ListData { query2.value(0).toString(), query2.value(3).toInt() }));
        if (ui->comboBox->findText(query2.value(0).toString()) == -1)
            ui->comboBox->addItem(query2.value(0).toString());
    }
    ui->labelSize->setText(QString::number(sizeAll/1048576.)+" MB");
}

void MainWindow::on_comboBox_currentTextChanged(const QString &arg1)
{
}

void MainWindow::on_btnFilter_clicked()
{
    for(int i = 0; i < ui->listWidget->count(); ++i)
    {
        ui->listWidget->item(i)->setHidden(true);
    }

    int64_t size = 0;
    for(int i = 0; i < ui->listWidget->count(); ++i)
    {
        ListData data = qvariant_cast<ListData>(ui->listWidget->item(i)->data(Qt::UserRole));
        if (data.cameraName == ui->comboBox->currentText())
        {
            size += data.size;
            ui->listWidget->item(i)->setHidden(false);
        }

        if (size >= ui->spinBox->value()*1048576)
            break;
    }
    ui->labelSize->setText(QString::number(size/1048576.)+" B");
}
