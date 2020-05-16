///Integer23°. С начала суток прошло N секунд (N — целое). Найти количество полных минут, прошедших с начала последнего часа. Браженец Влад 15.04

#include <iostream>
using namespace std;
/** Конец мантры */
int main(){
 int n;
 cin >> n;
 cout<<"Stolkosecynd proshlo s nachala day "<<(n/60)%60;
 return 0;
}
