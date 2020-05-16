#include <iostream>
#include <fstream>

int main()
{
    setlocale(LC_ALL, "ru");
    std::ifstream file;
    file.open("input.txt");
    int len, nc = 0, i, max_len;
    std::string str2 = " ";
    char ch;
    std::string max_str = " ";
    int int_max, int_max2;
    while (file.get(ch))
    {
        if (ch >= '0' && ch <= '9' && nc > 1 || nc > 2 || nc > 3)
        {
            str2 += ch;
        }
        if (ch == ' ')
        {
            ++nc;
        }
        if (ch == '\n')
        {
            nc = 0;
            //str2 += '\n';
            //tempfile << str2;
            str2 += '\0';
            for (i = 0; str2[i] != '\0'; ++i);
            if (max_str < str2 || max_len < i)
            {
                max_str = str2;
                max_len = i;
                str2 = " ";
            }
        }
    }
    std::cout << str2 << std::endl;
    std::cout << max_str << std::endl;
    file.close();
    std::ofstream outfile;
    outfile.open("output.txt");
    if (!outfile.is_open())
    {
        std::cout << "ERROR";
    }
    else
    {
        outfile << max_str;
    }
    outfile.close();
    return 0;
}
