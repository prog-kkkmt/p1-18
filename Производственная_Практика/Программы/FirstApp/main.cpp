#include "FirstApp.h"
#include <QtWidgets/QApplication>

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    FirstApp w;
    w.show();
    return a.exec();
}
