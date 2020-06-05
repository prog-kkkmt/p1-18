/**
Командный проэкт по Основам Програмирования
П1-18 Роголев В. Брусник В. Николай М.
06.06.2020
*/

#include <iostream>
#include <fstream>
#include <vector>
#include <string>
#include <windows.h>

#define MAX 10

using namespace std;

struct Stats
{
    int joyN;
    int hungN;
    int thirstN;
    int days;
};

void printstate(struct Stats tomo);
void printImage(string path);
void printMenu();

int main()
{
    setlocale(LC_ALL,"russian");
    struct Stats tomo; ///struct
    int f;
    /// cin >> tomo.joyN >> tomo.hungN >> tomo.thirstN;
    tomo.hungN = tomo.thirstN = tomo.joyN = MAX; /// Установка всех параметров на максимум
    tomo.days = 0; /// счетчик дней
    while (1)  /// День
    {
        /// Sleep(1000) ///Задержка
        tomo.days++; /// Подсчет кол-ва дней
        if (tomo.hungN == 0 || tomo.thirstN == 0) /// Если "Томо" голоден или хочет пить ,
            tomo.joyN--;                           ///Кол-во счастья уменьшаеться
        if (tomo.hungN != 0)
            tomo.hungN--;
        if (tomo.thirstN != 0)
            tomo.thirstN--;


        system("cls"); ///Очистка консоли
        if (tomo.joyN == 0) /// Если кол-во счастья уменьшаеться до нуля цыкл заканчиваеться
            break;
        else
            printstate(tomo);
        printImage("1.txt"); /// Вывод картинки в формате .txt
        printMenu();    /// Вывод меню действий
        cin >> f;
        switch(f)  /// Действия
        {
        case 1:
        {
            tomo.hungN += 5; /// +голод
            if (tomo.hungN >= MAX)
                tomo.hungN = MAX;
            break;
        }
        case 2:
        {
            tomo.thirstN += 5; /// +жажда
            if (tomo.thirstN >= MAX)
                tomo.thirstN = MAX;
            break;
        }
        case 3:
        {
            tomo.joyN += 5; /// +счастье
            if (tomo.joyN >= MAX)
                tomo.joyN = MAX;
            break;
        }
        default:
            break;
        }
    }
    cout << "\t  Счет: " << tomo.days << " Дней(я)" << endl; /// Концовка при окончании цикла
    printImage("2.txt"); /// Грустный  "Томо"
    cout << "***************GAME OVER*************" << endl;
    return 0;
}

void printstate(struct Stats tomo)  /// Вывод хар-ик "Томо"
{
    string joy(tomo.joyN,'Q');
    string hung(tomo.hungN,'Q');
    string thirst(tomo.thirstN,'Q');

    cout << "\t\t\t\t\t\t\t\t\t День:" << tomo.days << endl; /// Счетчик дней
    cout << "**************************************" << endl;
    cout << "* Счастье: " << joy << endl;
    cout << "* Голод: " << hung << endl;
    cout << "* Жажда: " << thirst <<endl;
}

void printImage(string path) /// Приём изображения и вывод его в консоль
{
    vector <string> strFile;
    string file;
    ifstream fin(path);
    while(fin >> file) /// Приём
        strFile.push_back(file);
    for(size_t i = 0; i < strFile.size(); i++) /// Вывод
        cout << strFile[i] << endl;
}
void printMenu()    /// Меню
{
    cout << "*------------------------------------*" << endl;
    cout << "*---1.--------кормить----------------*" << endl;
    cout << "*---2.---------поить-----------------*" << endl;
    cout << "*---3.-------веселить----------------*" << endl;
    cout << "**************************************" << endl;
}
