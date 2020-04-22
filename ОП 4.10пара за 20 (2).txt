/** 9. Упражнение 3.10. Напишите программу поиска в строке знаков пунктуации.
Программа должна позволить ввести символьную строку, содержащую знаки пунктуации, и вывести ту же строку, но уже без знаков пунктуации. */

#include <iostream>
#include <string>
using namespace std;

int main() {
    string str;
    int i, n;
    getline(cin,str);
    n = str.size();
    for(i = 0;i < n;i++)
    {
        if (ispunct(str[i]))
            str[i] = ' ';

    }
    cout << "" << str << endl;
return 0;
}
