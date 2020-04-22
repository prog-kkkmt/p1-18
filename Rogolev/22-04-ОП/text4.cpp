/** Text4°. Дан текстовый файл. Вывести количество содержащихся в нем символов
и строк (маркеры концов строк EOLN и конца файла EOF при подсчете количества символов не учитывать)..*/
# include <string>
# include <fstream>
# include <iostream>
using namespace std;
int main () {
    string name ;
    char n;
    int i,j = 0;
    ifstream input ("input.txt");
    input >> n;
    while(!input.eof())
    {
        j++;
        for(i=0;n != '\0' ;i++)
            input >> n;
    }
    cout << j << " - " << n << endl;
    return 0;
}
