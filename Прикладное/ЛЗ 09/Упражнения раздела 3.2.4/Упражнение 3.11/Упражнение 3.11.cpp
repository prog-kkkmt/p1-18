#include <iostream>
#include <fstream>

/**
Изменить программу упражнения 3.10. так, чтобы входные данные поступали из файла input.txt,
а результат записывался в файл output.txt
*/

int main()
{
    std::ifstream file_input ("input.txt");
    std::ofstream file_output ("output.txt");
    std::string str, punctmark, notpunctmark;
    while (file_input >> str && !file_input.eof())
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
        file_output << punctmark << std::endl;
        file_output << notpunctmark << std::endl;
        punctmark = ""; notpunctmark = "";
    }
    file_input.close();
    file_output.close();
    return 0;
}
