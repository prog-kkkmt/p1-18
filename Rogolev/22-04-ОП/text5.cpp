 /** Text5. Дана строка S и текстовый файл. Добавить строку S в конец файла.*/
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string s ;
    ofstream output ("output.txt",ios_base::app);
    cin >> s ;
    output << s;
    return 0;
}
