#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "loginwindow.h"
#include <QTime>
#include <QDate>
#include <fstream>
#include <QDebug>
#include <string>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    orderWindow = new orderwindow;
}

MainWindow::~MainWindow()
{
    delete ui;
}

//Примечание разработчика сформировать константу пути и прибовлять в дольнейшем название бд
QString formPath(QString path) //Формирование пути для того, чтобы определить, где лежит база данных
{
    int index_slesh;
    QString new_path;
    for (index_slesh = path.length()-1; path[index_slesh] != '/'; --index_slesh) { // избавляемся от названия файла
        ;
    }
    for (int index_new_path = 0; index_new_path != index_slesh; ++index_new_path) { //формируем строку без названия файла
        new_path += path[index_new_path];
    }
    return new_path;
}

//Таблица вне фунции, чтобы хранить две переменные
QStandardItemModel *model = new QStandardItemModel;
//Connect database with books
QSqlDatabase db_lib = QSqlDatabase::addDatabase("QSQLITE", "lib");

void MainWindow::keyPressEvent(QKeyEvent *event) //Метод при нажатии кнопки на клавиатуре читает данные из бд в таблицу
{
    QString book_id, title, author, price, count;
    QStandardItem *item_id, *item_title, *item_author, *item_price, *item_count;
    //Осуществляем запрос
    QString path = __FILE__; //Местонахождение файла
    db_lib.setDatabaseName(formPath(path) + "/lib.db");
    db_lib.open();
    QSqlQuery query(db_lib);
    query.exec("SELECT book_id, title, author, price, count FROM books");

    if (event->key() == Qt::Key_Enter || event->key() == Qt::Key_Return) //Если кнопка Enter была нажата
    {
        bool book_not_found = 0; //Переменная для проверки была ли книга найдена
        for (int table_row = 0; query.next();) //Осуществляем проход по всей базе данных
        {
            book_id = query.value(0).toString(); //id книги из базы данных
            title = query.value(1).toString(); //Название книги из базы данных
            author = query.value(2).toString(); //Автор книги из базы данных
            price = query.value(3).toString(); //Цена книги из базы данных
            count = query.value(4).toString(); //Количество книги из базы данных
            if (title == ui->lineEdit->text()) { //Если название из базы данных совпадает с текством введённым в поле для ввода
                 //Отделения данных от представлений в виджетах, обрабатывающих наборы данных
                item_id = new QStandardItem(book_id); item_title = new QStandardItem(title); item_author = new QStandardItem(author);
                item_price = new QStandardItem(price); item_count = new QStandardItem(count);
                //Заполнение модели элементами по индексу
                model->setItem(table_row, 0, item_id); model->setItem(table_row, 1, item_title); model->setItem(table_row, 2, item_author);
                model->setItem(table_row, 3, item_price); model->setItem(table_row, 4, item_count);
                book_not_found = 1; //Книга найдена
                ++table_row; //строка таблицы
            }

        }
        if (book_not_found == 0) { //Если книга не найдена выводим окно сообщения
            QMessageBox msgBox;
            msgBox.setWindowTitle("Message"); //Заголово сообщения
            msgBox.setText("sorry book not found");//Содержание сообщения
            msgBox.exec();
        }
    }
    ui->searchTableView->setModel(model); //Установка модели в которая была ранее заполнина
    //Обновление размера таблицы
    ui->searchTableView->resizeRowsToContents();
    ui->searchTableView->resizeColumnsToContents();
}


void MainWindow::on_EndOrderFormat_clicked() //Метод формирования заказа
{
    std::ofstream file("check.txt");
    if (file.is_open()) //Если файл открыт
    {
        LoginWindow lw;
        file << "OOO \"Books shop\"\n";
        QDate cd = QDate::currentDate();
        QString date_in_file = cd.toString(); //Текущая дата

        QTime ct = QTime::currentTime();
        QString time_in_file = ct.toString(); //Текущая время

        file << "Terminal: 00001\n"; //starting write in file
        file << "Cashier: " << lw.cashiers_replace.toStdString() << "              " << date_in_file.toStdString() << " " << time_in_file.toStdString() << "\n";
        QModelIndex index;
        int summ_order = 0, tabel_column;
        for (tabel_column = 0; tabel_column < model->rowCount(); ++tabel_column)
        {
            index = model->index(tabel_column, 1); // Индекс из модели. Индекс названия книги
            file << index.data().toString().toStdString() << "..............."; // Записываем название книги в счёт. в txt файл
            index = model->index(tabel_column, 3); // Индекс из модели. Индекс стоимости книги
            file << index.data().toString().toStdString(); // Записываем цену в счёт
            summ_order += std::stoi(index.data().toString().toStdString()); // Подсчёт суммы стоимости всех книг
            file << "\n";
        }
        file << "NDS 10/110\n";
        file << "Count product in receipt: " << tabel_column << "\n"; //Количество всех книг из модели
        file << "Summ: " << summ_order << "\n";
        file << "Summ NDS 10/100: " << (summ_order * 20) / 100; //Подсчёт НДС от общей суммы
        file.close();
    }
    else //Если файл не открыт
    {
        QMessageBox errEntryBox;
        errEntryBox.setWindowTitle("Error"); //Заголово сообщения
        errEntryBox.setText("File not open"); //Содержание сообщения
        errEntryBox.exec(); //отображает диалоговое окно
    }
}

void MainWindow::on_buttonFormOrder_clicked() //Метод открытия окна заказа
{
    std::fstream order_file("order.txt");
    if (order_file.is_open()) { //Если файл открыт
        this->close(); //Закрываем текущее окно
        orderWindow->show(); //Открываем окно формирования заказа
    } else {
        QMessageBox errEntryBox;
        errEntryBox.setWindowTitle("Message"); //Заголово сообщения
        errEntryBox.setText("You did not put the order file in the folder"); //Содержание сообщения
        errEntryBox.exec(); //отображает диалоговое окно
    }
}
