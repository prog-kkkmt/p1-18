#include <iostream>
#include <vector>
#include <sstream>
#include <map>
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

// Выдать свод по каждому Продавцу (по убыванию общей суммы)
void print_salers(vOrders & v) {
    map<string, int> sellers;
    for (Order o : v)
    {
        auto it = sellers.find(o.saler);
        if (it != sellers.end())
            sellers[o.saler] += o.cost;
        else
            sellers[o.saler] = o.cost;
    }

    cout << "Seller\tSummary" << endl;
    for (pair<string, int> s : sellers)
        cout << s.first << "\t" << s.second << endl;

}

// Выдать общий список
void print_all(vOrders & v) 
{
    cout << "Order №\tSeller\tCustomer\tDate\tCost" << endl;
    for (size_t i = 0; i < v.size(); i++)
        cout << v[i].order_id << "\t" << v[i].saler << "\t" << v[i].customer << "\t"  << v[i].date.day << "." << v[i].date.month << "." << v[i].date.year << "\t" << v[i].cost << endl;
}

int main() {
    setlocale(LC_ALL, "Russian");
    vOrders v;
    string fname = "orders.txt";
    while (true) 
    {
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
            if (words.size() < 6){
                cout << "Too few arguments" << endl;
                continue;
            }

            Date d;
            sscanf(words[4].c_str(), "%d.%d.%d", &(d.day), &(d.month), &(d.year));

            append(v, stoi(words[1]), words[2], words[3], d, stod(words[5]));
        }
        else if (words[0] == "edit") { // Редактировать
            if (words.size() < 6){
                cout << "Too few arguments" << endl;
                continue;
            }

            auto it = get_iter(v, stoi(words[1]));
            if (it == v.end())
                std::runtime_error("order_id not found!");
            Order o = *it;

            if (words[2] != "-")
                o.saler = words[2];

            if (words[3] != "-")
                o.customer = words[3];

            if (words[4] != "-")
            {
                Date d;
                sscanf(words[4].c_str(), "%d.%d.%d", &(o.date.day), &(o.date.month), &(o.date.year));
            }

            if (words[5] != "-")
                o.cost = stod(words[5]);

            edit(v, stoi(words[1]), o.saler, o.customer, o.date, o.cost);
        }
        else if (words[0] == "delete") { // Удалить
            if (words.size() < 2){
            cout << "Too few arguments" << endl;
            continue;
            }
            int id = stoi(words[1]);
            del(v, id);

        }
        else if (words[0] == "sort") { // Сортировать
            sort(v);
        }
        else if (words[0] == "report") { // Отчет
            print_salers(v);
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
