/** Упражнение 3.14. Прочитайте некоторый текст, сохраняя каждое введенное слово как отдельный элемент вектора.
Преобразуйте символы каждого слова в прописные.
Отобразите преобразованные элементы вектора, выводя по восемь слов в строке. */

#include <iostream>
#include <vector>
#include <string>

using namespace std;

int main() {
    string x,d;
    int i;
    vector <string> svec;
    cin >> x;
    d = '0';
    while (x != d){
        svec.push_back(x);
        cin >> x;
        i++;
    }
    for(int ix = 0; ix < svec.size(); ++ix)
    {
        if ((ix)%8==0)
            cout << endl;
        cout << svec[ix] << "  ";
    }
    return 0;
}
/// без перевода в прописные
