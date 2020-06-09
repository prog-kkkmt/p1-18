/** Ðåàëèçîâàòü íà ÿçûêå C++ ïðîãðàììó äëÿ äåìîíñòðàöèè ðàáîòû ôóíêöèè áèíàðíîãî ïîèñêà binSearch [1] */
#include <iostream>
using namespace std;

int main() {
  setlocale(LC_ALL, "rus");

  int arr[10];
  int key;
  bool flag = false;
  int l = 0, r = 9, mid;

  cout << "Ââåäèòå 10 ÷èñåë ïî âîçðàñòàíèþ äëÿ çàïîëíåíèÿ ìàññèâà: " << endl;
  for (int i = 0; i < 10; i++) {
    cin >> arr[i];
  }
  cout << endl << "Ââåäèòå èñêîìîå ÷èñëî: ";
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
  if (flag) cout << "Èíäåêñ ýëåìåíòà " << key << " â ìàññèâå ðàâåí: " << mid;
  else cout << "Òàêîãî ýëåìåíòà â ìàññèâå íåò";
  return 0;
}
