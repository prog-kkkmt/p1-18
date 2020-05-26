#include <algorithm>
#include <fstream>
#include <optional>
#include "orders_db.h"

// Загрузить из файла
void orders_db::load(std::vector<Order> & v, std::string fname) 
{
    Order order;
    std::ifstream in(fname);

    char delim;
    v.clear();
    while (in >> order.order_id >> order.seller >> order.customer >>
        order.date.day >> delim >> order.date.month >> delim >> order.date.year >> order.cost)
    {
        v.push_back(order);
    }

    in.close();
}

// Выгрузить в файл
void orders_db::save(vOrders & v, std::string fname) 
{
    std::ofstream out(fname);

    for (orders_db::Order o : v)
    {
        out << o.order_id << '\t' << o.seller << '\t' << o.customer << '\t' << o.date.day << "." << o.date.month << "." << o.date.year << '\t' << o.cost << std::endl;
    }

    out.close();
}

// Добавить новый заказ
void orders_db::append(vOrders & v,
    int                        order_id,
    std::optional<std::string> seller,
    std::optional<std::string> customer,
    std::optional<Date>        date,
    std::optional<double>      cost)
{
    auto res = find_iter(v, order_id);
    if (res != v.end())
        throw std::runtime_error("order_id exist!");

    Order o;

    o.order_id = order_id;

    if (seller.has_value())
        o.seller = seller.value();

    if (customer.has_value())
        o.customer = customer.value();

    if (date.has_value())
        o.date = date.value();

    if (cost.has_value())
        o.cost = cost.value();

    v.push_back(o);
}

// Редактировать заказ
void orders_db::edit(vOrders & v,
    int                        order_id,
    std::optional<std::string> seller,
    std::optional<std::string> customer,
    std::optional<Date>        date,
    std::optional<double>      cost)
{
    auto res = find_iter(v, order_id);
    if (res == v.end())
        throw std::runtime_error("order_id not found!");

    if (seller.has_value())
        res->seller = seller.value();

    if (customer.has_value())
        res->customer = customer.value();

    if (date.has_value())
        res->date = date.value();

    if (cost.has_value())
        res->cost = cost.value();
}

// Удалить заказ
void orders_db::del(vOrders & v, int order_id) {
    auto res = find_iter(v, order_id);
    if (res == v.end())
        throw std::runtime_error("order_id not found!");

    v.erase(find_iter(v, order_id));
}

// Сортировать по дате
void orders_db::sort(vOrders & v) {
    std::sort(v.begin(), v.end(),
        [](const orders_db::Order & a, const orders_db::Order & b) -> bool { return (a.cost > b.cost); });
}

orders_db::vOrders::iterator orders_db::find_iter(vOrders & v, int order_id)
{
    return std::find_if(v.begin(), v.end(),
                        [order_id](const Order & item) -> bool {return item.order_id == order_id;});
}
