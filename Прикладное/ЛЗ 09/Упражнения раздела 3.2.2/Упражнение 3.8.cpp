#include <iostream>

/**
Напишите программу, способную читать строки со стандартного устройства ввода
и соединять их в одну большую строку. Отобразите полученную строку. Измените программу так, чтобы
отделить соседние введенные строки пробелами.
*/

int main()
{
    std::string str, final_string = "";
    while (std::cin >> str) {
        final_string += str;
    }
    std::cout << final_string << std::endl;

    final_string = "";
    while (std::cin >> str) {
        final_string += str;
        final_string += " ";
    }
    std::cout << final_string << std::endl;
    return 0;
}
