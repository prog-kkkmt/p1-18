/** Text1°. Дано имя файла и целые положительные числа N и K.
Создать текстовый файл с указанным именем и записать в него N строк, каждая из которых состоит из K символов «*» (звездочка). */
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
string name;
int n, k, i;
cin >> name >> n >> k;
string nk(k,'*');
ofstream output (name);
for(i = 0;i<n;i++)
output << nk << endl ;

return 0;
}
