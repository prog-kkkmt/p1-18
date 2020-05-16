/** Реализовать на языке C++ программу для демонстрации работы функции бинарного поиска binSearch [1] Браженец Влад П1-18*/
#include <iostream>
#include <clocale>
using namespace std;
int main() {
  setlocale(LC_ALL, "rus");
  int arr[10];
  int znach, left = 0, right = 9, center;
  bool flag = false;
 int n;
    cout << "Введите размер массива массива(n<=10): " << endl;
            cin >> n;
    cout << "Введите n чисел для заполнения массива arr: " << endl;
  for (int i = 0; i < n; i++) {
    cin >> arr[i];
  }
  cout << endl << "vvedite znachenie: ";
  cin >> znach;
  while ((left <= right) && (flag != true)) {
    center = (left + right) / 2;
    if (arr[center] == znach)
        flag = true;
    if (arr[center] > znach)
        right = center - 1;
    else
        left = center + 1;
  }
  if (flag) cout << "znachenie  " << znach << " bilo naideno na pozicii: " << center+1;
  else cout << "znachenie ne naideno";
  return 0;
}
