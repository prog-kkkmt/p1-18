/**Minmax3. Дано целое число N и набор из N прямоугольников, заданных своими сторонами — парами чисел (a, b). Найти максимальный периметр прямоугольника из данного набора.
Брусник Вадим П1-18 */
#include <iostream>
using namespace std;
int main(){
    int n, a, b , per, maxs;
    cout<< "Vvedite N: ";
    cin >> n;
    for(int i = 1; i <= n; i++){
        cout << "Pramoygolnik nomer: " << i <<endl;
        cout << "a = ";
        cin >> a;
        cout<< endl;
        cout << "b = ";
        cin >> b;
        cout<< endl;
        per = 2 * (a + b);
        if (i == 1) maxs = per;
        else if (maxs < per ) maxs = per;
    }
    cout<< "Max Perimetr = "<< maxs;
    return 0;
}
