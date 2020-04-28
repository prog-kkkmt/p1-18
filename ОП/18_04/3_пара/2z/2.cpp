/**Задача 2
Вычислить значения функций и вывести их на экран (результаты расчетов должны совпадать).
https://stepik.org/lesson/253597/step/11?unit=233810 */
//Выполнил: Батраков Данила 

#include <iostream>
#include <cmath>
using namespace std;

int main() {
double a,b,z;
    cin >> a;
    z =  2*pow(sin(3.*M_PI - 2.*a),2)*pow(cos(5.*M_PI + 2.*a),2);
    b = (1./4.) - (1./4.)*sin((5.*M_PI)/2. - 8.*a);
    cout << z << endl << b;
    return 0;
}
