#ifndef ORDERWINDOW_H
#define ORDERWINDOW_H

#include <QWidget>
#include <QtSql/QSqlDatabase>
#include <QtSql/QSqlQuery>

namespace Ui {
class orderwindow;
}

class orderwindow : public QWidget
{
    Q_OBJECT

public:
    explicit orderwindow(QWidget *parent = nullptr);
    ~orderwindow();

private slots:
    void on_buttonLoadOrder_clicked();
    void on_buttonInvoicePayment_clicked();

private:
    Ui::orderwindow *ui;
};



#endif // ORDERWINDOW_H
