#include <iostream>

/**
Ввести с клаиватуры номер дня недели.
Вывести ни экран его название.
Использовать перечисления(enum)
*/

int main()
{
    enum week{Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6, Sunday = 7} number_weekday;
    scanf("%d", &number_weekday);
    switch(number_weekday)
    {
        case 1: std::cout << "Mondey"; break;
        case 2: std::cout << "Tuesday"; break;
        case 3: std::cout << "Wednesday"; break;
        case 4: std::cout << "Thursday"; break;
        case 5: std::cout << "Friday"; break;
        case 6: std::cout << "Saturday"; break;
        case 7: std::cout << "Sunday"; break;
    }
    return 0;
}
