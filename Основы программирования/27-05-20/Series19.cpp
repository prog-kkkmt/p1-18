/** Series19°. Дано целое число N (> 1) и набор из N целых чисел.
Вывести те элементы в наборе, которые меньше своего левого соседа,
и количество K таких элементов. */
/// Роголев В.А. П1-18 27.05.2020

#include <iostream>

using namespace ::std;

int main(){
    int n,k = 0;
    cin >> n;
    int mas[n];
    for(size_t i = 0;i < n;i++)
        cin >> mas[i];
    for(size_t i = 0;i < n;i++){
        if (mas[i-1] > mas[i]){
            k++;
            cout << mas[i] << " ";
            }
    }
    cout << endl << k;
    return 0;
}
