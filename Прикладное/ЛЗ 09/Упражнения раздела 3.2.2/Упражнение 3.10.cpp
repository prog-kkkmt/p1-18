#include <iostream>

/**
Напишите программу поиска в строке знаков пунктуации.
Программа должна позволить ввести символьную строку, содержащую знаки пунктуации,
и вывести ту же строку, но уже без знаков пунктуации.
*/

int main()
{
    int index_punct = 0, index_notpunct = 0;
    std::string str, punctmark, notpunctmark;
    std::cin >> str;
        for (int i = 0; i < str.length(); ++i)
        {
            if ((str[i] <= '/' && str[i] >= '!') || (str[i] >= '{' && str[i] <= '~') || (str[i] >= '[' && str[i] <= '`') || str[i] == '?' || str[i] == ':' || str[i] == ';') {
                punctmark[index_punct++] = str[i];
            }
            else {
                notpunctmark[index_notpunct++] = str[i];
            }
        }
    std::cout << punctmark << std::endl;
    std::cout << notpunctmark << std::endl;
    return 0;
}
