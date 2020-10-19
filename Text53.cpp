//Text53. Дан текстовый файл. Создать символьный файл, содержащий все знаки препинания, встретившиеся в текстовом файле (в том же порядке).
#include <string>
#include <fstream>
#include <iostream>
using namespace std;
 int main(){
     ifstream inp("File.txt");
     ofstream fout;

     fout.open("ile.txt");
     char c;
     while(!inp.eof()){
       c=inp.get();
        if (ispunct(c)){
            fout << c;
       }
     }
fout.close();
inp.close();
return 0;
 }
