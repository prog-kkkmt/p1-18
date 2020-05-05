/** Задание 1. (Гусятинер Л.Б., МГОТУ ККМТ, 23.04.2020)
Разработать программу с меню для работы с массивом целых
чисел из 10 элементов. Пункты меню: Заполнение, Нахождение
максимального, Нахождение суммы, Печать, Выход.
Для каждого действия (кроме выхода) разработать функцию,
принимающую в качестве параметров адрес первого элемента
массива и количество элементов.
*/

/** Этап C++2. Проект */
#include <iostream>
///#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>
#include "input.h"
#include "max.h"
#include "sum.h"
#include "print.h"

int main() {
    const int MENUSIZE = 5;
    size_t arrsize = 3;
    std::vector <int> v(arrsize);
    std::string aMenu[] = {"Выход", "Заполнение", "Нахождение максимального", "Нахождение суммы", "Печать"};
    int choice = 1;
    /* можно изменять
    тогда добавление элементов v.push_back(),
    как в Python v.append() */

    system("chcp 1251>nul");
    while (choice != 0) {
        /// печать меню
        for (int item = 0; item < MENUSIZE; item++)
            std::cout << item << "." << aMenu[item] << std::endl;
        std::cout << "Выбор:";
        std::cin >> choice;
        switch (choice) {
        case 1:
            /// Заполнение массива
            input(v, arrsize);
            system("Pause");
            break;
        case 2:
            /// Нахождение и печать максимального элемента
            std::cout << "max = " << max(v) << std::endl;
            system("Pause");
            break;
        case 3:
            /// Нахождение суммы
            std::cout << "sum=" << sum(v) << std::endl;
            system("Pause");
            break;
        case 4:
            /// Печать массива
            print(v);
            system("Pause");
            break;
        case 0:
            /// Выход
            std::cout << "Удачного дня!" << std::endl;
            system("Pause");
            break;
        default:
            /// Сообщение об ошибке
            std::cout << "Выбор от 0 до 4" << std::endl;
            system("Pause");
            break;
        }
    }
    return 0;
}
