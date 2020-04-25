/**4. Упражнение 3.5. Напишите программу, читающую со стандартного устройства ввода целые строки.
Измените программу так, чтобы она читала отдельные слова. */

#include <iostream>
#include <string>
using namespace std;

int main() {
    string str;

    getline(cin,str); /// читает целые строки
    cout << "" << str << endl;

    cin >> str;       /// отдельно читает слова
    cout << "" << str << endl;
return 0;
}
