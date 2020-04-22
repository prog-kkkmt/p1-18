/** Text1°. Дано имя файла и целые положительные числа N и K.
Создать текстовый файл с указанным именем и записать в него N строк, каждая из которых состоит из K символов «*» (звездочка). */
# include <string>
# include <fstream>
#include <locale>
# include <iostream>
using namespace std;
int main () {
    setlocale(LC_ALL,"RUSSIAN");
string name;
int n, k;
cin >> name >> n >> k;
string zvezd(k,'*');
    ofstream fout;
    fout.open(name.c_str());
for(int i = 0;i<n;i++){
    fout << zvezd << endl ;
    }
fout.close();
return 0;
}
