#include <iostream>

/**
Упражнение 3.5. Напишите программу, читающую со стандартного устройства ввода целые строки.
Измените программу так, чтобы она читала отдельные слова.
*/

using std::string;
using std::cin;

int main()
{
    string str;
    while (getline(cin, str)) {
        std::cout << str << std::endl;
    }
    while (cin >> str) {
        std::cout << str << std::endl;
    }
    return 0;
}
