#include "mainwindow.h"
#include "orderwindow.h"
#include "ui_orderwindow.h"
#include <QStandardItemModel>
#include <QMessageBox>
#include <fstream>
#include <QTime>
#include <QDate>
#include <string>

#include <iostream>

orderwindow::orderwindow(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::orderwindow)
{
    ui->setupUi(this);
}

orderwindow::~orderwindow()
{
    delete ui;
}

//Протестируй функцию
std::string priceString(std::string line) //Функция для того чтобы вернуть фрагмент строки содержащий количество книг
{
    unsigned int ind_start_price;
    for (ind_start_price = line.length()-1; line[ind_start_price] != '|'; --ind_start_price) //нахождения последней границы из текстового файла заказа
        ;
    std::string result_str;
    for (int ind_form_string = ind_start_price+1; line[ind_form_string] != '\0'; ++ind_form_string) {
        result_str += line[ind_form_string];
    }
    return result_str;
}

const int sizeMassTitles = 1000;
QString *massTitles = new QString[sizeMassTitles];
std::vector <int> massSubOrder, massSubDb;
QStandardItemModel *model_order_window = new QStandardItemModel;
QSqlDatabase db_lib_order = QSqlDatabase::addDatabase("QSQLITE", "lib_order"); //Активизация драйвера для использования sqlite

void orderwindow::on_buttonInvoicePayment_clicked() //При нажатии на кнопку формируется счёт
{
    std::ofstream order_file("order.txt", std::ios::app); //Открываем файл для добавления в конец строки, что заказ оплачен
    order_file << "order has been paid"; //Строка о том что заказ был оплачен
    order_file.close();

    QDate cd = QDate::currentDate();
    QString date_in_file = cd.toString(); //Текущая дата

    QTime ct = QTime::currentTime();
    QString time_in_file = ct.toString(); //Текущие время

    std::fstream final_order("final_order.txt");
    int summ_for_score = 0, account_number = 0;

    QString path = __FILE__; //Местонахождение текущего  файла
    db_lib_order.setDatabaseName(formPath(path) + "/lib.db"); //Путь до проекта соединёный с названием базы данных
    db_lib_order.open();
    QSqlQuery lib_num(db_lib_order);

    final_order << "Provider: " << "\n";
    final_order << "Invoice for payment: " << account_number << '\n';
    final_order << "Number\t\tProducts\tPrice\n\n"; //symbyl number of order
    QModelIndex index;
    for (int number_order = 0; number_order < model_order_window->rowCount(); ++number_order)
    {
        final_order << number_order << ". ";
        index = model_order_window->index(number_order, 1); //Индекс названия книги
        final_order << index.data().toString().toStdString() << "..................";
        index = model_order_window->index(number_order, 3); //Индекс цены
        //Записываем в файл коичество из заказа и количество умножаем на цену
        final_order << massSubDb[number_order] << '*' << index.data().toString().toStdString() << '=' << massSubDb[number_order] * std::stoi(index.data().toString().toStdString()) << '\n';
        //Сумма всего заказа
        summ_for_score += massSubDb[number_order] * std::stoi(index.data().toString().toStdString());//Умножаем количество на цену

        lib_num.prepare("UPDATE books set count = :count WHERE title = :title"); //Находим книгу по названию и меняем её количество в базе данных
        lib_num.bindValue(":count", massSubDb[number_order] - massSubOrder[number_order]); //То чему будет ровно количество
        lib_num.bindValue(":title", massTitles[number_order]); //То, откуда мы берём название книги для её поиска
        lib_num.exec(); //Выполняя запрос из prepare
    }
    final_order << "\nTotal: " << summ_for_score << '\n' << "Total vat amount: " << (summ_for_score * 20)/100 + summ_for_score << '\n';
    final_order << date_in_file.toStdString() << ' ' << time_in_file.toStdString() << '\n'; //Сегодняшняя дата и время
    final_order.close(); //закрываем файл счёта

    QMessageBox msgBox;
    msgBox.setWindowTitle("Message"); //Заголовок сообщения
    msgBox.setText("The order has been formed"); //Содержание сообщения
    msgBox.exec(); //отображает диалоговое окно

    this->close(); // Закрываем текущее окно

    MainWindow *mainwindow;
    mainwindow = new MainWindow(this);
    mainwindow->show(); // Открываем окно поиска
}

void orderwindow::on_buttonLoadOrder_clicked() //При нажатии на кнопку происходит запись в таблицу книг из заказа
{
    QString id_lib, title_lib, author_lib, price_lib, count_lib;
    QStandardItem *item_id, *item_title, *item_author, *item_price, *item_count;
    //Осуществляем запрос
    QString path = __FILE__; //Местонахождение файла
    db_lib_order.setDatabaseName(formPath(path) + "/lib.db"); //путь до базы данных
    db_lib_order.open();
    QSqlQuery lib(db_lib_order);
    lib.exec("SELECT book_id, title, author, price, count FROM books"); //Осуществляем sql запрос
    std::string line;
    int open_search_window = 0;
    for (int table_row = 0; lib.next();)
    {
        //Читаем данные из базы данных
        id_lib = lib.value(0).toString(); title_lib = lib.value(1).toString(); author_lib = lib.value(2).toString();
        price_lib = lib.value(3).toString(); count_lib = lib.value(4).toString();
        std::fstream order_file("order.txt"); //Открытие файла, чтобы начать с первой строки
        while (getline(order_file, line)) //Построчное чтение из файла
        {
            QString str = QString::fromStdString(line); //переводим строку типа string в строку типа QString
            if (line == "order has been paid") //Если в файле который содержит заказ встречается строчка, что заказ был оплачен
            {
                QMessageBox msgBox;
                msgBox.setWindowTitle("Message"); //Заголовок сообщения
                msgBox.setText("The order was marked as already paid. Please put a new file with the order."); //Содержание сообщения
                msgBox.exec(); //отображает диалоговое окно
                this->close(); //Закрывает текущее окно
                MainWindow *mainwindow;
                mainwindow = new MainWindow(this);
                mainwindow->show(); // Открываем окно поиска
                open_search_window = 1;
                break;
            }
            //Ищет подстроку в строке и определяет разницу между количеством в базе данных и количеством в заказе
            else if (str.indexOf(title_lib) == 0 && (std::stoi(count_lib.toStdString()) - std::stoi(priceString(line))) >= 0)
            {
                item_id = new QStandardItem(id_lib);
                item_title = new QStandardItem(title_lib);
                item_author = new QStandardItem(author_lib);
                item_price = new QStandardItem(price_lib);
                item_count = new QStandardItem(count_lib);
                //Заполнение модели элементами по индексу
                model_order_window->setItem(table_row, 0, item_id);
                model_order_window->setItem(table_row, 1, item_title);
                model_order_window->setItem(table_row, 2, item_author);
                model_order_window->setItem(table_row, 3, item_price);
                model_order_window->setItem(table_row, 4, item_count);

                massTitles[table_row] = title_lib; //Название таблицы добавляется в массив
                massSubDb.push_back(std::stoi(count_lib.toStdString())); //Количество книг из базы данных добавляется в конец массив
                massSubOrder.push_back(std::stoi(priceString(line))); //Количество книг из заказа добавляется в конец массив

                ++table_row; //строка таблицы
                break;
            }
            else if (str.indexOf(title_lib) == 0 && std::stoi(count_lib.toStdString()) - std::stoi(priceString(line)) < 0) //Если разность количества книг в заказе и в базе данных меньше нуля
            {
                //выводим сообщение, что в бд количества книг недостаточно
                QMessageBox msgBox;
                msgBox.setWindowTitle("Message"); //Заголовок сообщения
                msgBox.setText("The number of books in the order is more than in stock: " + title_lib);
                msgBox.exec();
            }
        }
        if (open_search_window == 1)
            break;
        order_file.close();
    }
    // Название столбцов для tableView
    model_order_window->setHeaderData(0, Qt::Horizontal, "book id", Qt::DisplayRole);
    model_order_window->setHeaderData(1, Qt::Horizontal, "title book", Qt::DisplayRole);
    model_order_window->setHeaderData(2, Qt::Horizontal, "author", Qt::DisplayRole);
    model_order_window->setHeaderData(3, Qt::Horizontal, "price", Qt::DisplayRole);
    model_order_window->setHeaderData(4, Qt::Horizontal, "count books", Qt::DisplayRole);
    ui->orderTableView->setModel(model_order_window);
    //Обновление размера таблицы
    ui->orderTableView->resizeRowsToContents();
    ui->orderTableView->resizeColumnsToContents();
}

