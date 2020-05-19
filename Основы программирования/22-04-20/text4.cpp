 /** Text4°. Дан текстовый файл. Вывести количество содержащихся в нем символов
и строк (маркеры концов строк EOLN и конца файла EOF при подсчете количества символов не учитывать)..*/
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
int main () {
    string name ;
    char n;
    int i = 1,j = 0;
    ifstream input ("input.txt");
    input >> n;
    while(!input.eof())
    {
        j++;
        while (input >> noskipws >> n) {
            if (n == '\n')
                break;
            i++;
        }
    }
    cout << j << " - " << i << endl;
    return 0;
}
