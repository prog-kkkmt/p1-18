/** Text2. ƒано им€ файла и целое число N (0 < N < 27).
—оздать текстовый файл с указанным именем и записать в него N строк:
перва€ строка должна содержать строчную (т. е. маленькую) латинскую букву Ђaї, втора€ Ч буквы Ђabї, треть€ Ч буквы Ђabcї и т. д.;
последн€€ строка должна содержать N начальных строчных латинских букв в алфавитном пор€дке.*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
    string name;
    int n, k, i;
    cin >> name >> n;
    string nk;
    ofstream output (name);
    for(i = 0;i<n;i++) {
        nk += 'a'+i;
        output << nk << endl ;

    }
    return 0;
}
