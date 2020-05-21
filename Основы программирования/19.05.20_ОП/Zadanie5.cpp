#include <iostream>

/**
Программирование на языке высокого уровня. Программир. На языке С++ стр.149
Т.И. Немцова, С.Ю. Голова, А.И. Терентьев; под ред. Л.Г. Гагариной

Написать программу, демонстрирующую утечку памяти.
Митюшин Пётр
*/

int main()
{
    char *pointer = NULL;
    int *ptr = new int;
    for (int i = 0; i < 1000; ++i){
        std::cout << ptr;
        for (int i = 0; i < 1000; ++i){
            pointer = new char[1000];
            std::cout << pointer;
        }
    }

    for (int i = 0; i < 100; ++i){
        std::cout << ptr;
        for (int i = 0; i < 1000; ++i){
            pointer = new char[1000];
            std::cout << pointer[i];
        }
    }

    for (int i = 0; i < 1000; ++i){
        std::cout << ptr;
        for (int i = 0; i < 100; ++i){
            pointer = new char[100];
            std::cout << pointer[i];
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
            pointer = new char[1000];
            std::cout << pointer;
        }
    }
    for (int i = 0; i < 100; ++i){
        std::cout << ptr;
        pointer = new char[100];
        std::cout << pointer[i];
        pointer = new char[100];
        std::cout << pointer[i];
        pointer = new char[100];
        std::cout << pointer[i];

        for (int i = 0; i < 100; ++i){
            pointer = new char[100];
            std::cout << pointer[i];
            for (int i = 0; i < 100; ++i){
                pointer = new char[100];
                std::cout << pointer[i];
                for (int i = 0; i < 100; ++i){
                    pointer = new char[100];
                    std::cout << pointer[i];
                }
                std::cout << pointer[i];
            }
            std::cout << pointer[i];
        }
        std::cout << pointer[i];
    }
    return 0;
}
