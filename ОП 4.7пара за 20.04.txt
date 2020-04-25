/**4. Упражнение 3.5. Напишите программу, читающую со стандартного устройства ввода целые строки.
Измените программу так, чтобы она читала отдельные слова. */

#include <iostream>
#include <string>
using namespace std;

int main() {
    string str1, str2;

    cin >> str1 >> str2;
    if (str1 == str2)
    cout << "1 = 2 " << endl;
    else if (str1 < str2)
    cout << "1 < 2 " << endl;
    else
    cout << "1 > 2 " << endl;
return 0;
}
