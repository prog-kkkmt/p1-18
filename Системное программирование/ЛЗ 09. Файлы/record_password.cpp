#include <iostream>
#include <fstream>

const int len = 50;
typedef struct data_authorizat
{
    char login[20];
    char mail[len];
    char password[len];

}data;

int main()
{
    int flag_for_exit = 0;
    char question;
    data_authorizat data;
    std::fstream file("passwords.txt");
    while (1)
    {
        std::cout << "do you want to enter more data: ";
        std::cin >> question;
        if (question == 'y' || question == 'Y')
        {
            std::cin >> data.login >> data.mail >> data.password;
            file << data.login << '\n' << data.mail << '\n' << data.password << "\n\n";
        }
        else
            break;
    }
    return 0;
}
