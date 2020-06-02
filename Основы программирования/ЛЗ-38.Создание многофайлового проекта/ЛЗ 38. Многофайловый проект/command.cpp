/** Лабораторное занятие 38. Создание многофайлового проекта.
Команда состоит из 2-х человек: Роголев В., Брусник В.
П1-18, 26.05.2020 г.
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <cstdlib>
#include "command.h"

using namespace std;

typedef std::vector <Order> vOrders;


// Редактировать сумму заказа
void edit(vOrders &v, int orderid, Date new_date) {
    for(size_t i=0;i<v.size();i++)
        if (orderid == v[i].order_id){ // Проверка на ID
            cout << v[i].order_id << "   \t" << v[i].saler << "   \t" << v[i].customer << "   \t"
            << v[i].date.year << "." << v[i].date.month << "." << v[i].date.day << "   \t"
            << v[i].cost << endl << "Введите новую сумму заказа:";
            cin >> v[i].cost ; // Ввод новой суммы
            v[i].date = new_date;
            cout << v[i].order_id << "   \t" << v[i].saler << "   \t" << v[i].customer << "   \t"
            << v[i].date.year << "." << v[i].date.month << "." << v[i].date.day << "   \t" << v[i].cost << endl;

        }
    cin.get(); // Пауза
}

// Загрузить из файла
void load(std::vector<Order> &v, string fname) {
    Order order; // Промежуточная структура заказа
    ifstream in("orders.txt");

    char delim;
    v.clear();  // Очистка всего вектора для записи "свежего" списка
    while (in >> order.order_id >> order.saler >> order.customer >>
        order.date.year >> delim >> order.date.month >> delim >> order.date.day >> order.cost)
    {
        v.push_back(order); // Запись одной строки из промежуточной структуры
    }
}

// Выгрузить в файл
void save(vOrders v, string fname) {
    ofstream out(fname);
     for (size_t i = 0; i < v.size(); i++)
        out << v[i].order_id << "   \t" << v[i].saler << "   \t" << v[i].customer << "   \t"
        << v[i].date.year << "." << v[i].date.month << "." << v[i].date.day << "\t"
        << v[i].cost << endl;
}

// Добавить новый заказ
void append(vOrders &v) {
    Order order;
    char delim; // Переменная для считывания даты
    cout << "Введите данные добавляемого заказа, через пробел:" << endl;
    cin >> order.order_id >> order.saler >> order.customer
    >> order.date.year >> delim >> order.date.month
    >> delim >> order.date.day >> order.cost;
    v.push_back(order); // Добавление в конец списка
}

// Удалить заказ
void del(vOrders &v, int orderid) {
    for (size_t i = 0; i < v.size(); i++) // Проверка по ID
        if (orderid == v[i].order_id)
            v.erase(v.begin() + i);
}

// Компаратор для сортировки по убыванию суммы
bool comp_sum (const Saler& a, const Saler& b) { return (a.sum > b.sum); }

// Компараторы для сортировки по возрастанию даты
bool comp_year (const Order& a, const Order& b) { return (a.date.year < b.date.year); }

bool comp_month (const Order& a, const Order& b) { return (a.date.month < b.date.month); }

bool comp_day (const Order& a, const Order& b) { return (a.date.day < b.date.day); }

// Сортировать по дате
void vsort(vOrders &v) {
    sort(v.begin(), v.end(), comp_year); // Сортировка по году
    sort(v.begin(), v.end(), comp_month);// Сортировка по месяцу
    sort(v.begin(), v.end(), comp_day);// Сортировка по дню
}

// Выдать свод по каждому Продавцу (по убыванию общей суммы)
void print_salers(vOrders v) {
    vector <Saler> salers; // Временный вектор для сортировки
    for (size_t i = 0; i < v.size(); i++) {
        size_t j;
        for (j = 0; j < salers.size() && salers[j].name != v[i].saler; j++) // Добавление в список по Фамилиям
            ;
        if (j < salers.size())
            salers[j].sum += v[i].cost;             //И суммирование повторяющихся Фамелий
        else {
            Saler s;                        // Создание нового продовца в списке
            s.name = v[i].saler;
            s.sum = v[i].cost;
            salers.push_back(s);
        }
    }
    sort(salers.begin(), salers.end(), comp_sum); // Сортировка по сумме
    for (size_t i = 0; i < salers.size(); i++)
        cout << salers[i].name << "   \t" << salers[i].sum << endl;
    cin.get(); // Пауза
}

// Выдать общий список
void print_all(vOrders v) {
    cout << "Номер\tПродавец\tПокупатель\tДата\t\tСумма\n";
    for (size_t i = 0; i < v.size(); i++)
        cout << v[i].order_id << "   \t" << v[i].saler << "   \t" << v[i].customer << "   \t" <<
        v[i].date.year << "." << v[i].date.month << "." << v[i].date.day << "   \t" << v[i].cost << endl;
}
