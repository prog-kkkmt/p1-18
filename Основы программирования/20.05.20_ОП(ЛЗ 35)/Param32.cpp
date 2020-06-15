#include <iostream>
#include <string>

/**
М. Э. Абрамян
Описать процедуру UpCaseRus(S), преобразующую все строчные русские буквы строки S в прописные (остальные символы строки S не изменяются).
Строка S является входным и выходным параметром. Используя процедуру UpCaseRus, преобразовать пять данных строк.
Митюшин Пётр
*/

void UpCaseRus(char (&s)[100], int *len)
{
    for(int i = 0; i < *len; ++i)
    {
        if (islower(s[i]))
        {
            s[i] = toupper(s[i]);
        }
    }
}

int main()
{
    int i;
    char str[100];
    std::cin >> str;
    for (i = 0; str[i] != '\0'; ++i);
    UpCaseRus(str, &i);
    std::cout << str;
    return 0;
}
