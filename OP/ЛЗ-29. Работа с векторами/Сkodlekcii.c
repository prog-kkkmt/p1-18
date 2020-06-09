/** Задание 1.
Разработать программу с меню для работы с массивом целых
чисел из 10 элементов. Пункты меню: Заполнение, Нахождение
максимального, Нахождение суммы, Печать, Выход.
Для каждого действия (кроме выхода) разработать функцию,
принимающую в качестве параметров адрес первого элемента
массива и количество элементов.
*/
#include <stdio.h>
#include <stdlib.h>
#define ARRSIZE 10
#define MENUSIZE 5
/** Заполнение */
void input(int *v, int n);
/** Нахождение максимального */
int max(int *v, int n);
/** Нахождение суммы */
int sum(int *v, int n);
/** Печать */
void print(int *v, int n);
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
/** Заполнение */
void input(int *v, int n) {
    int i;
    for (i = 0; i < n; i++) {
        printf("v[%d]=", i);
        scanf("%d", (v+i));
    }
}
/** Нахождение максимального */
int max(int *v, int n) {
    int imax = 0;
    int i;
    for (i = 1; i < n; i++)
        if (*(v+i) > *(v+imax))
            imax = i;
    return *(v+imax);
}
/** Нахождение суммы */
int sum(int *v, int n) {
    int s = 0;
    int i;
    for (i = 0; i < n; i++)
        s += *(v + i);
    return s;
}
/** Печать */
void print(int *v, int n) {
    int i;
    for (i = 0; i < n; i++)
        printf("%d%s", *(v+i), (i < n-1 ? ", " : "\n"));
}



