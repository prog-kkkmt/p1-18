// OrdersDB
// Разработал Михаил
#include <vector>
#include <string>
#include <optional>

namespace orders_db {
struct Date { // дата
    int year; // год
    int month; // месяц
    int day; // день
};

struct Order { // Заказ
    int order_id; // Номер заказа
    std::string seller; // Продавец
    std::string customer; // Заказчик
    Date date; // Дата заказа
    double cost; // Сумма заказа
};

using vOrders = std::vector <Order>;

void load(vOrders & v, std::string fname);

void save(vOrders & v, std::string fname);

void append(vOrders & v,
    int                        order_id,
    std::optional<std::string> seller = std::nullopt,
    std::optional<std::string> customer = std::nullopt,
    std::optional<Date>        date = std::nullopt,
    std::optional<double>      cost = std::nullopt);

void edit(vOrders & v,
    int                        order_id,
    std::optional<std::string> seller = std::nullopt,
    std::optional<std::string> customer = std::nullopt,
    std::optional<Date>        date = std::nullopt,
    std::optional<double>      cost = std::nullopt);

void del(vOrders & v, int order_id);

void sort(vOrders & v);

std::vector<Order>::iterator find_iter(vOrders & v, int order_id);
}
