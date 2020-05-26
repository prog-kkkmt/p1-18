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
/*
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
*/
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
void print_all(vOrders & v) {
    cout << "Number\tSeller\tCustomer\tDate\tSumm\n";
    for (size_t i = 0; i < v.size(); i++)
        cout << v[i].order_id << "\t" << v[i].saler << "\t" << v[i].customer << "\t"  << v[i].date.year << "." << v[i].date.month << "." << v[i].date.day << "\t" << v[i].cost << endl;
}

int main() {
    setlocale(LC_ALL, "Russian");
    vOrders v;
    string fname = "orders.txt";
    while (true) {
       // menu();
        string command;
        cout << "> ";
        getline(cin, command);
        vector<string> words = split_whitespace(command);
        if (words[0] == "exit") { // Выход
            exit(0);
        }
        else if (words[0] == "load") { // Загрузить
            load(v, fname);
        }
        else if (words[0] == "save") {  // Выгрузить
            save(v, fname);
        }
       else if (words[0] == "add") { // Добавить
           if (words.size() < 5){
            cout << "Too few arguments" << endl;
            continue;
           }
           Date d;
//            sscanf(words[4].c_str(), "%d.%d.%d", &d.day, &d.month, &d.year)
 //           append();
        }
        else if (words[0] == "edit") { // Редактировать
 //           edit();
        }
        else if (words[0] == "delete") { // Удалить
            if (words.size() < 2){
            cout << "Too few arguments" << endl;
            continue;
            }
            int id = stoi(words[1])-1;
            del(v, id);

        }
        else if (words[0] == "sort") { // Сортировать
            sort(v);
        }
        else if (words[0] == "report") { // Отчет
   //         print_salers();
        }
        else if (words[0] == "all") { // общий список
            print_all(v);
        }
        else if (words[0] == "help") {
            cout << "load - load file" << endl;
            cout << "save - save file" << endl;
            cout << "add - add info (d.m.Y)" << endl;
            cout << "exit" << endl;
            cout << "edit - edit info for id (d.m.Y)" << endl;
            cout << "sort - sort information" << endl;
            cout << "all - checkout all info" << endl;
            cout << "help - call command's info" << endl;
            cout << "report - make report for period" << endl;
            cout << "delete - delete info" << endl;
        }
    }
    return 0;
}
