#include <iostream>

/**
Напишите программу поиска в строке знаков пунктуации.
Программа должна позволить ввести символьную строку, содержащую знаки пунктуации,
и вывести ту же строку, но уже без знаков пунктуации.
*/

int main()
{
    std::string str, punctmark, notpunctmark;
    while (std::cin >> str)
    {
        for (int i = 0; i < str.length(); ++i)
        {
            if ((str[i] <= '/' && str[i] >= '!') || (str[i] >= '{' && str[i] <= '~') || (str[i] >= '[' && str[i] <= '`') || str[i] == '?' || str[i] == ':' || str[i] == ';') {
                punctmark += str[i];
            }
            else {
                notpunctmark += str[i];
            }
        }
        std::cout << punctmark << std::endl;
        std::cout << notpunctmark << std::endl;
        punctmark = ""; notpunctmark = "";
    }
    return 0;
}
