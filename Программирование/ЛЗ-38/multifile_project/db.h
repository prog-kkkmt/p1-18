#include <vector>
#include <string>

namespace orders_db {
struct Date { // дата
    int year; // год
    int month; // месяц
    int day; // день
};

struct Order { // Заказ
    int order_id; // Номер заказа
    std::string saler; // Продавец
    std::string customer; // Заказчик
    Date date; // Дата заказа
    double cost; // Сумма заказа
};

struct Saler {
    std::string name;
    double sum;
};

using vOrders = std::vector <Order>;

void load(vOrders & v, std::string fname);

void edit(vOrders &v, int orderid, Date new_date);

void save(vOrders v, std::ofstream out);

void append(vOrders & v, Order o);

void del();

void sort();

}