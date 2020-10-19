// ЛЗ-38. Многофайловый проект
// Разработали Михаил и Стив
#include <iostream>
#include <vector>
#include <algorithm>
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

// Выдать свод по каждому Продавцу (по убыванию общей суммы)
void print_sellers(vOrders & v) {
    vector<pair<string, double>> sellers;
    for (Order o : v)
    {
        auto it = find_if(sellers.begin(), sellers.end(),
                        [o](const std::pair<string, double> &a) -> bool 
                            {return a.first == o.seller;});
        if (it != sellers.end())
            it->second += o.cost;
        else
            sellers.push_back(make_pair(o.seller, o.cost));
    }

    sort(sellers.begin(), sellers.end(), 
        [](const std::pair<string, double> &a, const std::pair<string, double> &b){return a.second > b.second;});

    cout << "Seller\tSummary" << endl;
    for (pair<string, double> s : sellers)
        cout << s.first << "\t" << s.second << endl;

}

void print_row(Order & o)
{
    cout << o.order_id << "\t" << o.seller << "\t" << o.customer << "\t"  << o.date.day << "." << o.date.month << "." << o.date.year << "\t" << o.cost << endl;
}

// Выдать общий список
void print_all(vOrders & v) 
{
    cout << "Order №\tSeller\tCustomer\tDate\tCost" << endl;
    for (size_t i = 0; i < v.size(); i++)
        print_row(v[i]);
}

int main() {
    setlocale(LC_ALL, "Russian");
    vOrders v;
    string fname = "orders.txt";
    while (true)
    {
        try {
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

                auto it = find_iter(v, stoi(words[1]));
                if (it == v.end())
                    throw std::runtime_error("order_id not found!");
                Order o = *it;

                if (words[2] != "-")
                    o.seller = words[2];

                if (words[3] != "-")
                    o.customer = words[3];

                if (words[4] != "-")
                {
                    Date d;
                    sscanf(words[4].c_str(), "%d.%d.%d", &(o.date.day), &(o.date.month), &(o.date.year));
                }

                if (words[5] != "-")
                    o.cost = stod(words[5]);

                edit(v, stoi(words[1]), o.seller, o.customer, o.date, o.cost);
            }
            else if (words[0] == "delete") { // Удалить
                if (words.size() < 2){
                cout << "Too few arguments" << endl;
                continue;
                }
                int id = stoi(words[1]);
                del(v, id);

            }
            else if (words[0] == "get") { // Удалить
                if (words.size() < 2){
                cout << "Too few arguments" << endl;
                continue;
                }
                auto it = find_iter(v, stoi(words[1]));
                if (it == v.end())
                    throw std::runtime_error("order_id not found!");
                
                print_row(*it);
            }
            else if (words[0] == "sort") { // Сортировать
                sort(v);
            }
            else if (words[0] == "report") { // Отчет
                print_sellers(v);
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
                cout << "all - print all orders" << endl;
                cout << "get - print one order" << endl;
                cout << "help - call command's info" << endl;
                cout << "report - make report for period" << endl;
                cout << "delete - delete info" << endl;
            }
        }
        catch(const std::runtime_error& re)
        {
            std::cerr << "Runtime error: " << re.what() << std::endl;
        }
        catch(const std::exception& ex)
        {
            std::cerr << "Error occurred: " << ex.what() << std::endl;
        }
        catch(...)
        {
            std::cerr << "Unknown failure occurred. Possible memory corruption" << std::endl;
        }
    }

    return 0;
}
