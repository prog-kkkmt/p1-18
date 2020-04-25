#include <iostream>
#include <cmath>
/** М. Э. Абрамян */
/** На числовой оси расположены три точки: A, B, C.
Определить, какая из двух последних точек (B или C) расположена ближе к A,
и вывести эту точку и ее расстояние от точки A. */
/** Митюшин Пётр */
using namespace std;

int main()
{
    int a, b, c;
    int ab, ac;
    cin >> a >> b >> c;
    ab = abs(a - b);
    ac = abs(a - c);
    if (ab < ac){
        cout << "b: " << b << " " << ab << endl;
    }
    else if (ab > ac){
        cout << "c: " << c << " " << ac << endl;
    }
    return 0;
}
/**
4 5 1
5 1
 */
