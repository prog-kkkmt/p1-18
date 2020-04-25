#include <iostream>
/** М. Э. Абрамян */
/**Дано трехзначное число. Найти сумму и произведение его цифр.*/
/** Митюшин Пётр */
using namespace std;

int main()
{
    int a;
    cin >> a;
    cout << (a % 10) + (a / 10 % 10) + (a / 100 % 100) << endl;
    cout << (a % 10) * (a / 10 % 10) * (a / 100 % 100) << endl;
    return 0;
}
/**
123
6
6
 */
