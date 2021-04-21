#include "loginwindow.h"
#include "mainwindow.h"
#include "ui_loginwindow.h"
#include <fstream>
#include <QDir>
#include <QFileInfo>

LoginWindow::LoginWindow(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::LoginWindow)
{
    ui->setupUi(this);
    orderWindow = new orderwindow;
    mainWindow = new MainWindow;
    adminWindow = new adminwindow;
    //cashiers_replace = "";
}

LoginWindow::~LoginWindow()
{
    delete ui;
}

QSqlDatabase db_cashiers = QSqlDatabase::addDatabase("QSQLITE", "worker"); //function addDatabase is static

void LoginWindow::on_buttonLogin_clicked() //Метод при нажатии на кнопку проверяется правильность ввода логина и пароля
{
    int close_window = 0;
    QString Login = ui->login_edit->text(); //Текст из строки для ввода логина
    QString Password = ui->password_edit->text(); //Текст из строки для ввода пароля

    QString path = __FILE__; //текущее местоположение файла loginwindow.h
    //Подключаем базу данных
    db_cashiers.setDatabaseName(formPath(path) + "/worker.db");
    db_cashiers.open();
    //Осуществляем запрос
    QSqlQuery db_cas(db_cashiers);
    db_cas.exec("SELECT id, login, password, surname, post FROM workers"); //Запрос к базе данных

    QString id_cashiers, login_cashiers, password_cashiers, surname_cashiers, post_workers;
    while (db_cas.next())
    {
        //Данные из базы данных
        id_cashiers = db_cas.value(0).toString(); //id работника
        login_cashiers = db_cas.value(1).toString(); //логин работника
        password_cashiers = db_cas.value(2).toString(); //пароль работника
        surname_cashiers = db_cas.value(3).toString(); //ФИО работника
        post_workers = db_cas.value(4).toString(); //Пост занимаемый работником
        if (Login == login_cashiers && Password == password_cashiers && post_workers.toStdString() == "Кассир") { //Проверка на правильность введённых данных
            //Совпадает ли ранние введённые логин и пароль с логином и паролем из базы данных
            cashiers_replace = surname_cashiers;
            this->close(); //Закрываем текущее окно
            close_window = 1;
            std::fstream order_file("order.txt"); //Открытие файла заказа
            if (order_file.is_open()) { //Если файл заказа открывается
                orderWindow->show(); //Вызываем окно заказов
            } else {
                mainWindow->show(); //Окно поиска
            }
            break;
        }
        else if (Login == login_cashiers && Password == password_cashiers && post_workers.toStdString() == "Админ") //Осуществляем вход по админом
        {
            this->close(); //Закрываем текущее окно
            adminWindow->show();//Открываем окно админа
            close_window = 1; //Служит обозначением того, что окно закрыто и вход осуществлён
            break;
        }
    }
    if (close_window == 0) //Если вход не удался, то появляется диалоговое окно с сообщением о неправильно введённым логином и паролем
    {
        QMessageBox errEntryBox;
        errEntryBox.setWindowTitle("Error"); //Загаловок ошибки
        errEntryBox.setText("You have an incorrect username or password"); //Сообщение об ошибке
        errEntryBox.exec(); //отображает диалоговое окно об ошибке
    }
}
