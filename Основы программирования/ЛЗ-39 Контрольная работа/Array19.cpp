/** Array19. Дан целочисленный массив A размера 10.
Вывести порядковый номер последнего из тех его элементов AK,
которые удовлетворяют двойному неравенству A1 < AK < A10.
Если таких элементов нет, то вывести 0.
*/

/// Роголев В.А. П1-18 27.05.2020

#include <iostream>

using namespace std;

int main(){
    int mas[10];
    int k = 0;
    size_t i;
    for (i = 0;i < 10;i++)
        cin >> mas[i];
    for (i = 0;i < 10;i++)
        if(mas[i] > mas[0] && mas[i] < mas[9])
            k = mas[i];
    cout << k;
return 0;
}
