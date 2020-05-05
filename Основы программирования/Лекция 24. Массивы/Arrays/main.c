/** Задание 1. (Гусятинер Л.Б., МГОТУ ККМТ, 23.04.2020)
Разработать программу с меню для работы с массивом целых
чисел из 10 элементов. Пункты меню: Заполнение, Нахождение
максимального, Нахождение суммы, Печать, Выход.
Для каждого действия (кроме выхода) разработать функцию,
принимающую в качестве параметров адрес первого элемента
массива и количество элементов.
*/

/** Этап C-3. Проект */
#include <stdio.h>
#include <stdlib.h>
#define ARRSIZE 3
#define MENUSIZE 5
#include "input.h"
#include "max.h"
#include "sum.h"
#include "print.h"

int main() {
    int v[ARRSIZE];
    char *aMenu[] = {"Выход", "Заполнение", "Нахождение максимального", "Нахождение суммы", "Печать"};
    int choice = 1;
    int item;

    system("chcp 1251>nul");

    while (choice != 0) {
        /** печать меню */
        for (item = 0; item < MENUSIZE; item++)
            printf("%d.%s\n", item, aMenu[item]);
        printf("Выбор:");
        scanf("%d", &choice);
        switch (choice) {
        case 1:
            /** Заполнение массива */
            input(v, ARRSIZE);
            system("Pause");
            break;
        case 2:
            /** Нахождение и печать максимального элемента */
            printf("max=%d\n", max(v, ARRSIZE));
            system("Pause");
            break;
        case 3:
            /** Нахождение суммы */
            printf("sum=%d\n", sum(v, ARRSIZE));
            system("Pause");
            break;
        case 4:
            /** Печать массива */
            print(v, ARRSIZE);
            system("Pause");
            break;
        case 0:
            /** Выход */
            printf("Удачного дня!\n");
            system("Pause");
            break;
        default:
            /** Сообщение об ошибке*/
            printf("Выбор от 0 до 4\n");
            system("Pause");
            break;
        }
    }
    return 0;
}
