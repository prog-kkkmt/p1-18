#include <iostream>

struct Profile
{
    std::string surname_profile;
    std::string name_profile;
    std::string patronymic_profile;
    std::string adres_profile;
    int year_profile;
    char Profile_Class[30];
};

using namespace std;

int main()
{
    Profile surname;
    Profile name;
    Profile patronymic;
    Profile adres;
    Profile year;
    Profile Profile_Class;
    for (int number_of_students = 0; number_of_students <= 3; ++number_of_students){
        std::cin >> surname.surname_profile >>  name.name_profile >>  patronymic.patronymic_profile >> adres.adres_profile;
        if (surname.surname_profile[0] == 'C' || surname.surname_profile[0] == 'c'){
            std::cout << surname.surname_profile << ' ' <<  name.name_profile << ' ' <<  patronymic.patronymic_profile << ' ' << adres.adres_profile << std::endl;
        }
    }
    return 0;
}
