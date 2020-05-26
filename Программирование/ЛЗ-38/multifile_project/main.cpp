#include <iostream>
#include <vector>
#include <sstream>
#include "orders_db.h"
using namespace std;
using namespace orders_db;

vector<string> split_whitespace(string s)
{
    istringstream strs;
    vector<string> splited_string;

    strs.str(s);
    splited_string.resize(1);
    for (int i=1; strs >> splited_string[i-1]; splited_string.resize(++i));
    splited_string.pop_back();
    return splited_string;
}

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

// // Выдать свод по каждому Продавцу (по убыванию общей суммы)
// void print_salers(vOrders v) {
//     vector <Saler> salers;
//     for (size_t i = 0; i < v.size(); i++) {
//         size_t j;
//         for (j = 0; j < salers.size() && salers[j].name != v[i].saler; j++)
//             ;
//         if (j < salers.size())
//             salers[j].sum += v[i].cost;
//         else {
//             Saler s;
//             s.name = v[i].saler;
//             s.sum = v[i].cost;
//             salers.push_back(s);
//         }
//     }
//     //sort(salers.begin(), salers.end(), comp_sum);
//     for (size_t i = 0; i < salers.size(); i++)
//         cout << salers[i].name << "\t" << salers[i].sum << endl;
//     cin.get();
// }

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
    while (true) {
        menu();
        string command;
        cin >> command;
        vector<string> words = split_whitespace(command);
        cout << words[0];
        if (words[0] == "exit") { // Выход

        }
        else if (words[0] == "load") { // Загрузить

        }
        else if (words[0] == "save") {  // Выгрузить

        }
        else if (words[0] == "add") { // Добавить

        }
        else if (words[0] == "edit") { // Редактировать

        }
        else if (words[0] == "delete") { // Удалить
            printf("delete");
        }
        else if (words[0] == "sort") { // Сортировать

        }
        else if (words[0] == "report") { // Отчет

        }
        else if (words[0] == "all") { // общий список

        }
    }
    return 0;
}
