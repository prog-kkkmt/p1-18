 /** Text7. Дана строка S и текстовый файл. Добавить строку S в начало файла.*/
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string s,l ;
    ifstream input("output.txt");
    getline(input,l);
    ofstream output ("output.txt");
    cin >> s ;
    output << s << l;
    return 0;
}
