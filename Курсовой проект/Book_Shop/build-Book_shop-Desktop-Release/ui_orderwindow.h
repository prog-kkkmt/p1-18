/********************************************************************************
** Form generated from reading UI file 'orderwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ORDERWINDOW_H
#define UI_ORDERWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableView>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_orderwindow
{
public:
    QWidget *layoutWidget;
    QVBoxLayout *verticalLayout;
    QTableView *orderTableView;
    QHBoxLayout *horizontalLayout;
    QPushButton *buttonInvoicePayment;
    QPushButton *buttonLoadOrder;

    void setupUi(QWidget *orderwindow)
    {
        if (orderwindow->objectName().isEmpty())
            orderwindow->setObjectName(QString::fromUtf8("orderwindow"));
        orderwindow->resize(691, 362);
        layoutWidget = new QWidget(orderwindow);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(0, 0, 691, 361));
        verticalLayout = new QVBoxLayout(layoutWidget);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        verticalLayout->setContentsMargins(0, 0, 0, 0);
        orderTableView = new QTableView(layoutWidget);
        orderTableView->setObjectName(QString::fromUtf8("orderTableView"));

        verticalLayout->addWidget(orderTableView);

        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        buttonInvoicePayment = new QPushButton(layoutWidget);
        buttonInvoicePayment->setObjectName(QString::fromUtf8("buttonInvoicePayment"));

        horizontalLayout->addWidget(buttonInvoicePayment);

        buttonLoadOrder = new QPushButton(layoutWidget);
        buttonLoadOrder->setObjectName(QString::fromUtf8("buttonLoadOrder"));

        horizontalLayout->addWidget(buttonLoadOrder);


        verticalLayout->addLayout(horizontalLayout);


        retranslateUi(orderwindow);

        QMetaObject::connectSlotsByName(orderwindow);
    } // setupUi

    void retranslateUi(QWidget *orderwindow)
    {
        orderwindow->setWindowTitle(QCoreApplication::translate("orderwindow", "Form", nullptr));
        buttonInvoicePayment->setText(QCoreApplication::translate("orderwindow", "Invoice for payment", nullptr));
        buttonLoadOrder->setText(QCoreApplication::translate("orderwindow", "loadOrder", nullptr));
    } // retranslateUi

};

namespace Ui {
    class orderwindow: public Ui_orderwindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ORDERWINDOW_H
