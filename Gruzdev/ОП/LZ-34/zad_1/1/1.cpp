/** 1. Объявить указатели на типы int, double, char. Вывести на экран
размер памяти, занимаемый этими указателями. Объясните полученный
результат.*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    int *pi;
    double *pd;
    char *pc;
    cout << "Size Pointer to int - " << sizeof(pi) << " byte" << endl << "Size Pointer to double - " << sizeof(pd) << " byte" << endl << "Size Pointer to char - " << sizeof(pc) << " byte" << endl;

    return 0;
}
/** Размер занимаемый указателем зависит от разрядности приложения(т.е. на 32-битном он занимает 4 байта, а на 64-битном - 8 байт); */
