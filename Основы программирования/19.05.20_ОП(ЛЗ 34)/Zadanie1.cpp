#include <iostream>

/**
Программирование на языке высокого уровня. Программир. На языке С++ стр.149
Т.И. Немцова, С.Ю. Голова, А.И. Терентьев; под ред. Л.Г. Гагариной

Объявить указатели на типы int, double, char.
Вывести на экран размер памяти, занимаемый этими указателями.
Объясните полученный результат.
Митюшин Пётр
*/

int main()
{
    int *p = NULL;
    double *d = NULL;
    char *c = NULL;
    std::cout << sizeof(int*) << std::endl;
    std::cout << sizeof(double*) << std::endl;
    std::cout << sizeof(char*) << std::endl;
    std::cout << sizeof(*p) << std::endl;
    std::cout << sizeof(*d) << std::endl;
    std::cout << sizeof(*c) << std::endl;
    return 0;
}
