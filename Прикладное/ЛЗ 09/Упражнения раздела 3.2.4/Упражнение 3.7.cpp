#include <iostream>

/**
Напишите программу, которая читает две строки и уведомляет, равны ли они,
а если нет, какая из них больше. Измените программу так, чтобы она указывала, имеют ли строки
одинаковую длину, и если нет, то какая из них длинней.
*/

int main()
{
    std::string str1, str2;
    while (std::cin >> str1 && std::cin >> str2) {
        if (str1.length() == str2.length())
            std::cout << "strings equal" << std::endl;
        else
            std::cout << str1.length() << ' ' << str2.length() << std::endl;
    }
    return 0;
}
