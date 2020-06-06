/** Команда состоит из 3-х человек: Груздев Роман, Герасимов Дмитрий, Петр Митюшин.
П1-18, 26.05.2020 г.
*/
#ifndef FUNC_H
#define FUNC_H

struct Date { // дата
    int year; // год
    int month; // месяц
    int day; // день
};

struct Nomination { // Заказ
    int nom_id; // Номер изделия
    std::string name; // название изделия
    std::string pr; // производитель 
    Date date; // Дата производства
    double cost; // Стоимость изделия
    bool t; // Присутствует ли изделие на складе
};

typedef std::vector <Nomination> vNom;

void load(vNom *v, std::string fname); // 1.Загрузка файла из фнейм

void save(vNom &v, std::string fname_o); // 2.Выгрузка файла в фнейм_о

void append(vNom *v); // 3.Добавление нового изделия в вектор

void edit(vNom &v, size_t idx); // 4.Редактирование стоимости изделия

void del(vNom *v, size_t idx); // 5.Удаление заказа

void sort(vNom &v); // 6.Сортировка изделий по дате

void print_all(vNom v); // 7.Общ. список изделий

//void sortAZ(vNom &v); // 8. Сортировка от минимума к максимуму

#endif
