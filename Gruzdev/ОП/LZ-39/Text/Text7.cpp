/** Text7. Дана строка S и текстовый файл. Добавить строку S в начало файла. */
// Выполнил: Груздев Роман, П1-18
#include <stdio.h>
#include <iostream>
#include <fstream>
#include <cstdio>
#include <cstring>
using namespace std;


int main(){
    std::string s, s1;
    char fname[100];
    	cout << "Введите название файла в который надо вставить строку: ";
	fgets(fname,100,stdin);
	fname[strlen(fname)-1] = '\0';
	cout << "Введите строчку: ";
	cin >> s;
   	
	ifstream in(fname);
		getline(in,s1);
	in.close();
	
	remove(fname);

	ofstream out(fname);
   		out << s;
		out << s1;
	out.close();


    return 0;
}
