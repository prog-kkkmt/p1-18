#include <iostream>
#include <vector>
#include "db.h"
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

// Выдать свод по каждому Продавцу (по убыванию общей суммы)
void print_salers(vOrders v) {
    vector <Saler> salers;
    for (size_t i = 0; i < v.size(); i++) {
        size_t j;
        for (j = 0; j < salers.size() && salers[j].name != v[i].saler; j++)
            ;
        if (j < salers.size())
            salers[j].sum += v[i].cost;
        else {
            Saler s;
            s.name = v[i].saler;
            s.sum = v[i].cost;
            salers.push_back(s);
        }
    }
    //sort(salers.begin(), salers.end(), comp_sum);
    for (size_t i = 0; i < salers.size(); i++)
        cout << salers[i].name << "\t" << salers[i].sum << endl;
    cin.get();
}

// Выдать общий список
void print_all(vOrders v) {
    cout << "Номер\tПродавец\tПокупатель\tДата\tСумма\n";
    for (size_t i = 0; i < v.size(); i++)
        cout << v[i].order_id << "\t" << v[i].saler << "\t" << v[i].customer << endl;
}

int main() {
    system("chcp 1251>nul");
    vOrders v;
    string fname = "orders.txt";
    int choice = -1;
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
            // 2. Выгрузить в файл
            // save();
            break;
        case 3:
            // 3. Добавить новый заказ
            append();
            break;
        case 4:
            // 4. Редактировать сумму заказа
            // edit();
            break;
        case 5:
            // 5. Удалить заказ
            del();
            break;
        case 6:
            // 6. Сортировать по дате
            vsort();
            break;
        case 7:
            // 7. Выдать свод по каждому Продавцу (по убыванию общей суммы)
            print_salers(v);
            break;
        case 8:
            // 8. Выдать общий список
            print_all(v);
            break;
        default:
            cout << "Неверный ввод. От 0 до 8" << endl;
            break;
        }
    }

    return 0;
}
