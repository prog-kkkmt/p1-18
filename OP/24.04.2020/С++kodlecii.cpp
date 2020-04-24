/** Задание 1.
Разработать программу с меню для работы с массивом целых
чисел из 10 элементов. Пункты меню: Заполнение, Нахождение
максимального, Нахождение суммы, Печать, Выход.
Для каждого действия (кроме выхода) разработать функцию,
принимающую в качестве параметров адрес первого элемента
массива и количество элементов.
*/
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <string>
int max(int *v, int n) {
    int imax = 0;
    for (int i = 1; i < n; i++)
        if (v[i] > v[imax])
            imax = i;
    return v[imax];
}
void input(int *v, int n) {
    for (int i = 0; i < n; i++) {
        std::cout << "v[" << i << "]=";
        std::cin >> v[i];
    }
}
int sum(int *v, int n) {
    int s = 0;
    for (int i = 0; i < n; i++)
        s += v[i];
    return s;
}
void print(int *v, int n) {
    for (int i = 0; i < n; i++)
        std::cout << v[i] << (i < n-1 ? ", " : "\n");
}
int main() {
    const int ARRSIZE = 10;
    const int MENUSIZE = 5;
    int v[ARRSIZE];
    std::string aMenu[] = {"Выход", "Заполнение", "Нахождение максимального", "Нахождение суммы", "Печать"};
    int choice = 1;
    system("chcp 1251>nul");
    while (choice != 0) {
        /** печать меню */
        for (int item = 0; item < MENUSIZE; item++)
            std::cout << item << "." << aMenu[item] << std::endl;
        std::cout << "Выбор:";
        std::cin >> choice;
        switch (choice) {
        case 1:
            /** Заполнение массива */
            input(v, ARRSIZE);
            system("Pause");
            break;
        case 2:
            /** Нахождение и печать максимального элемента */
            std::cout << "max = " << max(v, ARRSIZE) << std::endl;
            system("Pause");
            break;
        case 3:
            /** Нахождение суммы */
            std::cout << "sum=" << sum(v, ARRSIZE) << std::endl;
            system("Pause");
            break;
        case 4:
            /** Печать массива */
            print(v, ARRSIZE);
            system("Pause");
            break;
        case 0:
            /** Выход */
            std::cout << "Удачного дня!" << std::endl;
            system("Pause");
            break;
        default:
            /** Сообщение об ошибке*/
            std::cout << "Выбор от 0 до 4" << std::endl;
            system("Pause");
            break;
        }
    }
    return 0;
}
