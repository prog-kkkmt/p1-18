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

// Меню
void menu() {
    cout << "0. Выход\n";
    cout << "1. Загрузить из файла\n";
    cout << "2. Выгрузить в файл\n";
    cout << "3. Добавить новый заказ\n";
    cout << "4. Редактировать сумму заказа\n";
    cout << "5. Удалить заказ\n";
    cout << "6. Сортировать по дате\n";
    cout << "7. Выдать свод по каждому Продавцу (по убыванию общей суммы)\n";
    cout << "8. Выдать общий список\n";
}

int main() {
    system("chcp 1251>nul");
    vOrders v;
    string fname = "orders.txt";
    int id; // Переменная для выбора заказа
    int choice = -1; // Переменная выбора "кэйса"
    while (choice != 0) {
        menu();
        cin >> choice;
        switch (choice) {
        case 0:
            // 0. Выход
            break;
        case 1:
            // 1. Загрузить из файла
            load(v, fname);
            break;
        case 2:
            // 2. Выгрузить в файли дату
            save(v, fname);
            break;
        case 3:
            // 3. Добавить новый заказ
            append(v);
            break;
        case 4:
            // 4. Редактировать сумму заказа
            Date dat;
            char delim;
            cout << "Введите номер заказа в который нужно изменить сумму, а также дату заказа:\n" ;
            cin >> id  >> dat.year >> delim >> dat.month >> delim >>dat.day; // Ввод новой даты
            edit(v,id,dat);
            break;
        case 5:
            // 5. Удалить заказ
            cout << "Введите номер заказа в который нужно удалить:";
            cin >> id;
            del(v,id);
            break;
        case 6:
            // 6. Сортировать по дате
            vsort(v);
            break;
        case 7:
            // 7. Выдать свод по каждому Продавцу (по убыванию общей суммы)
            print_salers(v);
            break;
        case 8:
            // 8. Выдать общий списокMicrosoft Office 2007
            print_all(v);
            break;
        default:
            cout << "Неверный ввод. От 0 до 8" << endl;
            break;
        }
    }

    return 0;
}
