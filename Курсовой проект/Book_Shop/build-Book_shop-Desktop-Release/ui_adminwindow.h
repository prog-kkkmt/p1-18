/********************************************************************************
** Form generated from reading UI file 'adminwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.14.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_ADMINWINDOW_H
#define UI_ADMINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_adminwindow
{
public:
    QTableWidget *tableWidget;
    QWidget *layoutWidget;
    QHBoxLayout *horizontalLayout;
    QPushButton *buttonAdd;
    QPushButton *button_change;
    QPushButton *button_delete;
    QPushButton *buttonClose;

    void setupUi(QWidget *adminwindow)
    {
        if (adminwindow->objectName().isEmpty())
            adminwindow->setObjectName(QString::fromUtf8("adminwindow"));
        adminwindow->resize(447, 237);
        tableWidget = new QTableWidget(adminwindow);
        tableWidget->setObjectName(QString::fromUtf8("tableWidget"));
        tableWidget->setGeometry(QRect(0, 0, 451, 211));
        layoutWidget = new QWidget(adminwindow);
        layoutWidget->setObjectName(QString::fromUtf8("layoutWidget"));
        layoutWidget->setGeometry(QRect(0, 210, 451, 27));
        horizontalLayout = new QHBoxLayout(layoutWidget);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        horizontalLayout->setContentsMargins(0, 0, 0, 0);
        buttonAdd = new QPushButton(layoutWidget);
        buttonAdd->setObjectName(QString::fromUtf8("buttonAdd"));

        horizontalLayout->addWidget(buttonAdd);

        button_change = new QPushButton(layoutWidget);
        button_change->setObjectName(QString::fromUtf8("button_change"));

        horizontalLayout->addWidget(button_change);

        button_delete = new QPushButton(layoutWidget);
        button_delete->setObjectName(QString::fromUtf8("button_delete"));

        horizontalLayout->addWidget(button_delete);

        buttonClose = new QPushButton(layoutWidget);
        buttonClose->setObjectName(QString::fromUtf8("buttonClose"));

        horizontalLayout->addWidget(buttonClose);


        retranslateUi(adminwindow);

        QMetaObject::connectSlotsByName(adminwindow);
    } // setupUi

    void retranslateUi(QWidget *adminwindow)
    {
        adminwindow->setWindowTitle(QCoreApplication::translate("adminwindow", "Form", nullptr));
        buttonAdd->setText(QCoreApplication::translate("adminwindow", "add", nullptr));
        button_change->setText(QCoreApplication::translate("adminwindow", "change", nullptr));
        button_delete->setText(QCoreApplication::translate("adminwindow", "delete", nullptr));
        buttonClose->setText(QCoreApplication::translate("adminwindow", "close", nullptr));
    } // retranslateUi

};

namespace Ui {
    class adminwindow: public Ui_adminwindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_ADMINWINDOW_H
