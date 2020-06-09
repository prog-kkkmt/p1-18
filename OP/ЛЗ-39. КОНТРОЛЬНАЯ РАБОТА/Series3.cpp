/** Series3. Даны десять вещественных чисел. Найти их среднее арифметическое.
Брусник Вадим П1-18*/
#include <iostream>
using namespace std;
int main(){
float ar[10], summ = 0;
for (int i = 0; i <10 ; i++){
    cin >> ar[i];
    summ += ar[i];
}
cout << summ / 10;
}
