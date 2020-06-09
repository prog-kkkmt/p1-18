/** 9. Óïðàæíåíèå 3.10. Íàïèøèòå ïðîãðàììó ïîèñêà â ñòðîêå çíàêîâ ïóíêòóàöèè.
Ïðîãðàììà äîëæíà ïîçâîëèòü ââåñòè ñèìâîëüíóþ ñòðîêó, ñîäåðæàùóþ çíàêè ïóíêòóàöèè, è âûâåñòè òó æå ñòðîêó, íî óæå áåç çíàêîâ ïóíêòóàöèè. */

#include <iostream>
#include <string>
using namespace std;

int main() {
    string str;
    int i, n;
    getline(cin,str);
    n = str.size();
    for(i = 0;i < n;i++)
    {
        if (ispunct(str[i]))
            str[i] = ' ';

    }
    cout << "" << str << endl;
return 0;
}
