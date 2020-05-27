/**Array3. Дано целое число N (> 1), а также первый член A и разность D
 арифметической прогрессии. Сформировать
и вывести массив размера N, содержащий N первых членов данной прогрессии:
Брусник Вадим П1-18*/

#include <iostream>
using namespace std;
int main(){
    int arr[100], n,a,d;
    cout << "N = ";
    cin >> n;
    cout << endl << "A = ";
    cin >> a;
    cout << endl << "D = ";
    cin >> d;
    arr[0] = a;
    for(int i = 1; i < n ; i++){
        arr[i] = arr[i-1]+d;
    }
    for(int i = 0; i < n; i++){
        cout << arr[i] << " ";
    }
    return 0;
}
