///Integer7°. Дано двузначное число. Найти сумму и произведение его цифр. Брусник Вадим 15 04 2020 П1-18
#include <iostream>
using namespace std;
/** Конец мантры */
int main(){
    int a;
cin>> a;
int c = a /10, b = a % 10;
cout<<"Summa = "<<c+b<<endl<<"Proizvedenie = "<<c*b;
return 0;
}
