#include "lib.h"
#include <iostream>
#include <sstream>
#include <iomanip>
#include <cstring>

using namespace std;

void printhelp()
{
    cout << "CarDB v.0.0.0.0.0.0.0.1" << endl;
    cout << "load - Загрузить указанный файл" << endl;
    cout << "save - Сохранить в указанный файл" << endl;
    cout << "add <date (d.m.Y)> <name> <price> - Добавить запись" << endl;
    cout << "update <id> <date (d.m.Y)> <name> <price> - Изменить запись по её id" << endl;
    cout << "remove <id> - Удалить запись по её id" << endl;
    cout << "printall - Вывести все записи" << endl;
    cout << "print <id> - Вывести запись по её id" << endl;
    cout << "report <year> - Составить отчет за указанный год" << endl;
    cout << "sort - Сортировка по дате"<< endl;
    cout << "help - Эта помощь"<< endl;
    cout << "quit - Выход"<< endl;
}

void pretty_print(carinfo& inf)
{
    cout << std::put_time(&inf.date, "%d.%m.%Y") << " " << inf.name << " " << inf.price << std::endl;
}

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

int main()
{
    db_type table;
    printhelp();
    while (true)
    {
        cout << "   > ";

        string command;
        vector<string> command_parsed;
        
        getline(cin, command);
        command_parsed = split_whitespace(command);

        try
        {
            if (command_parsed[0] == "load")
            {
                // Tested
                cout << "Path [./data.txt]: ";
                string path;
                getline(cin, path);
                //cout << path << endl;

                if (path == "")
                    table = load("data.txt");
                else
                    table = load(path);
            }
            else if (command_parsed[0] == "save")
            {
                // Tested
                cout << "Path [./data.txt]: ";
                string path;
                getline(cin, path);

                if (path == "")
                    save("data.txt", table);
                else
                    save(path, table);
                
                cout << "Успешно сохранено." << endl;
            }
            else if (command_parsed[0] == "add")
            {
                // Tested
                if (command_parsed.size() < 4)
                    throw std::runtime_error("Too few arguments");

                carinfo ci;
                strptime(command_parsed[1].c_str(), "%d.%m.%Y", &ci.date);
                ci.name = command_parsed[2];
                ci.price = stoi(command_parsed[3]);

                table.push_back(ci);
            }
            else if (command_parsed[0] == "update")
            {
                // Tested
                if (command_parsed.size() < 5)
                    throw std::runtime_error("Too few arguments");

                int id = stoi(command_parsed[1]);
                id--;

                if ((id < 0) || (id >= table.size()))
                {
                    throw runtime_error("Id not found");
                }

                carinfo ci;
                strptime(command_parsed[2].c_str(), "%d.%m.%Y", &ci.date);
                ci.name = command_parsed[3];
                ci.price = stoi(command_parsed[4]);

                table[id] = ci;
            }
            else if (command_parsed[0] == "remove")
            {
                // Tested
                if (command_parsed.size() < 2)
                    throw std::runtime_error("Too few arguments");

                int id = stoi(command_parsed[1]);
                id--;

                if ((id < 0) || (id >= table.size()))
                {
                    throw runtime_error("Id not found");
                }

                table.erase(table.begin() + id);
            }
            else if (command_parsed[0] == "printall")
            {
                // Tested
                int i = 0;
                i++;
                for (carinfo ci : table)
                {
                    cout << i++ << "| "; pretty_print(ci); //<< std::put_time(&ci.date, "%d.%m.%Y") << " " << ci.name << " " << ci.price << std::endl;
                }
                cout << "Всего: " << i-1 << endl;
            }
            else if (command_parsed[0] == "print")
            {
                // Tested
                if (command_parsed.size() < 2)
                    throw std::runtime_error("Too few arguments");
                    
                int id = stoi(command_parsed[1]);
                id--;

                if ((id < 0) || (id >= table.size()))
                {
                    throw runtime_error("Id not found");
                }

                pretty_print(table[id]);
                //std::cout << std::put_time(&table[id].date, "%d.%m.%Y") << " " << table[id].name << " " << table[id].price << std::endl;
            }
            else if (command_parsed[0] == "report")
            {
                // Tested
                if (command_parsed.size() < 2)
                    throw std::runtime_error("Too few arguments");

                db_type table_copy(table);
                //std::copy(table.begin(), table.end(), table_copy.begin());
                sort_db(&table_copy);

                tm year_tm;
                strptime(command_parsed[1].c_str(), "%Y", &year_tm);

                cout << "=====   Годовой отчет за " << command_parsed[1] << "   =====" << endl;
                int sum = 0;
                //int monthsum = 0;
                //int month = table_copy[0].date.tm_mon;
                array<int, 12> monthsum = {0};
                array<string, 12> month_name = {"январь", "ферваль", "март", "апрель", "май", "июнь", "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь"};
                for (carinfo ci : table_copy)
                {
                    //pretty_print(ci);
                    //if ((ci.date >= yearunix) && (ci.date <= yearunix+31536000))
                    if (ci.date.tm_year == year_tm.tm_year)
                    {
                        sum += ci.price;
                        
                        // if (month != ci.date.tm_mon)
                        // {
                        //     cout << "Заработано за "<< month_name[month] << ": " << monthsum << endl;
                        //     month = ci.date.tm_mon;
                        //     monthsum = 0;
                        // }

                        // monthsum += ci.price;
                        
                        monthsum[ci.date.tm_mon] += ci.price;
                    }
                }

                for (int i=0; i<12; i++)
                    cout << "Заработано за "<< month_name[i] << ": " << monthsum[i] << endl;
                cout << "==================" << endl;
                cout << "Заработано за год: " << sum << endl;
            }
            else if (command_parsed[0] == "sort")
            {
                // Tested
                cout << "Are you sure? (y/n): ";
                string confirmation;
                getline(cin, confirmation);
                if (confirmation != "y")
                {
                    continue;
                }

                sort_db(&table);

                //pretty_print(&table[id]);
            }
            else if (command_parsed[0] == "help")
            {
                // Tested
                printhelp();
            }
            else if (command_parsed[0] == "quit")
            {
                // Tested
                break;
            }
            else if (command_parsed[0] == "")
            {
                // Tested
            }
            else 
            {
                // Tested
                cout << "Такой команды нет. Для вызова помощи напишите 'help'" << endl;
            }
        }
        catch (exception &ex) {
            cout << "ERROR: " << ex.what() << endl;
        }
    }
}