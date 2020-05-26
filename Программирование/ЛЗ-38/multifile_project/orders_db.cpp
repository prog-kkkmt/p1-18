#include <algorithm>
#include <fstream>
#include "orders_db.h"

// Редактировать сумму заказа
void orders_db::edit(vOrders &v, int orderid, Date new_date) {
}

// Загрузить из файла
void orders_db::load(std::vector<Order> & v, std::string fname) {
    Order order;
    std::ifstream in("orders.txt");

    char delim;
    v.clear();
    while (in >> order.order_id >> order.saler >> order.customer >>
        order.date.day >> delim >> order.date.month >> delim >> order.date.year >> delim >> order.cost)
    {
        v.push_back(order);
    }
}

// Выгрузить в файл
void orders_db::save(vOrders v, std::ofstream out) {

}

// Добавить новый заказ
void orders_db::append(vOrders & v, Order o) {
    v.push_back(o);
}

// Удалить заказ
void orders_db::del(vOrders & v, int id) {
}

// // Компаратор для сортировки по убыванию суммы
// bool comp_sum (const orders_db::Saler& a, const orders_db::Saler& b) { return (a.sum > b.sum); }

// Сортировать по дате
void orders_db::sort(vOrders & v) {

}
