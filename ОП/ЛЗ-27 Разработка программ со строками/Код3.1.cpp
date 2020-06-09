/**4. Óïðàæíåíèå 3.5. Íàïèøèòå ïðîãðàììó, ÷èòàþùóþ ñî ñòàíäàðòíîãî óñòðîéñòâà ââîäà öåëûå ñòðîêè.
Èçìåíèòå ïðîãðàììó òàê, ÷òîáû îíà ÷èòàëà îòäåëüíûå ñëîâà. */

#include <iostream>
#include <string>
using namespace std;

int main() {
    string str1, str2;

    cin >> str1 >> str2;
    if (str1.size() == str2.size())
    cout << "1 = 2 " << endl;
    else if (str1.size() < str2.size())
    cout << "1 < 2 " << endl;
    else
    cout << "1 > 2 " << endl;
return 0;
}
