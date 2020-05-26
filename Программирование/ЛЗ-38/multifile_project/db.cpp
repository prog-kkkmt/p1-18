#include <algorithm>
#include <fstream>
#include "db.h"

// Редактировать сумму заказа
void edit(vOrders &v, int orderid, Date new_date) {
}

// Загрузить из файла
void load(std::vector<Order> & v, std::string fname) {
    Order order;
    std::ifstream in("orders.txt");

    char delim;
    v.clear();
    while (in >> order.order_id >> order.saler >> order.customer >>
        order.date.year >> delim >> order.date.month >> delim >> order.date.day >> delim >> order.cost)
    {
        v.push_back(order);
    }
}

// Выгрузить в файл
void save(vOrders v, std::ofstream out) {
}

// Добавить новый заказ
void append() {
}

// Удалить заказ
void del() {
}

// Компаратор для сортировки по убыванию суммы
bool comp_sum (const Saler& a, const Saler& b) { return (a.sum > b.sum); }

// Сортировать по дате
void vsort() {
}