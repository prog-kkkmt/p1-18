 /** Text6. Даны два текстовых файла. Добавить в конец первого файла содержимое второго файла.*/
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string s ;
    ifstream input("input.txt");
    ofstream output ("output.txt",ios_base::app);
    output << input.rdbuf();

    return 0;
}
