/**Реализовать на языке C++ программу для демонстрации работы функции бинарного поиска binSearch [1] */
#include <iostream>
using namespace std;

int main() {
  setlocale(LC_ALL, "rus");

  int arr[10];
  int key;
  bool flag = false;
  int l = 0, r = 9, mid;

  cout << "Введите 10 чисел по возрастанию для заполнения массива:" << endl;
  for (int i = 0; i < 10; i++) {
    cin >> arr[i];
  }
  cout << endl << "Введите искомое число:";
  cin >> key;
  while ((l <= r) && (flag != true)) {
    mid = (l + r) / 2;
    if (arr[mid] == key)
        flag = true;
    if (arr[mid] > key)
        r = mid - 1;
    else
        l = mid + 1;
  }
  if (flag) cout << "Индекс элемента " << key << " в массиве равен: " << mid;
  else cout << "Такого элемента в массиве нет";
  return 0;
}
