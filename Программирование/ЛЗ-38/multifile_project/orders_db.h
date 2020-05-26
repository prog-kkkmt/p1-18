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
    std::string saler; // Продавец
    std::string customer; // Заказчик
    Date date; // Дата заказа
    double cost; // Сумма заказа
};

using vOrders = std::vector <Order>;

void load(vOrders & v, std::string fname);

void save(vOrders & v, std::string fname);

void append(vOrders & v,
    std::optional<int>         order_id = std::nullopt,
    std::optional<std::string> saler = std::nullopt,
    std::optional<std::string> customer = std::nullopt,
    std::optional<Date>        date = std::nullopt,
    std::optional<double>      cost = std::nullopt);

void edit(vOrders & v,
    std::optional<int>         order_id = std::nullopt,
    std::optional<std::string> saler = std::nullopt,
    std::optional<std::string> customer = std::nullopt,
    std::optional<Date>        date = std::nullopt,
    std::optional<double>      cost = std::nullopt);

void del(vOrders & v, int id);

void sort(vOrders & v);

}
