#include <iostream>

/**
М. Э. Абрамян
Дана строка. Подсчитать количество содержащихся в ней прописных латинских букв.
Митюшин Пётр
*/

int main()
{
    int nc = 0;
    std::string str;
    getline(std::cin, str);
    for (int i = 0; i < str.length(); ++i)
    {
        if (isupper(str[i]))
        {
            ++nc;
        }
    }
    std::cout << nc;
    return 0;
}
