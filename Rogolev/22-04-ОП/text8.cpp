 /** Text8. Даны два текстовых файла. Добавить в начало первого файла содержимое второго файла.*/
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string s ;
    ifstream input("output.txt");
    ofstream output ("input.txt",ios_base::app);
    ofstream output2("output.txt",ios_base::out);
    ifstream input2("input.txt");
    output << input.rdbuf();
    output2 << input2;
    return 0;
}
// неработает
