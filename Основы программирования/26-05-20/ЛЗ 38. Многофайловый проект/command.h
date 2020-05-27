/** Лабораторное занятие 38. Создание многофайлового проекта.
Команда состоит из 2-х человек: Роголев В., Брусник В.
П1-18, 26.05.2020 г.
*/

#ifndef COMMAND_H
#define COMMAND_H



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

struct Saler { // Продавцы
    std::string name; // Фамелия
    double sum; // Сумма заказов
};

// Основной список
typedef std::vector <Order> vOrders;

// 4. Редактировать сумму заказа
void edit(vOrders &v, int orderid, Date new_date);

// 1. Загрузить из файла
void load(std::vector<Order> &v, std::string fname);

// 2. Выгрузить в файл
void save(vOrders v, std::string fname);

// 3. Добавить новый заказ
void append(vOrders &v);

// 5. Удалить заказ
void del(vOrders &v, int orderid);

// 6. Сортировать по дате
void vsort(vOrders &v);

// 7. Выдать свод по каждому Продавцу (по убыванию общей суммы)
void print_salers(vOrders v);

// 8. Выдать общий список
void print_all(vOrders v);

#endif
