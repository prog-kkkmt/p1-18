/**
Напишите программу, которая читает 2 строки и
уведомляет равны они,а если нет, то какая из них больше.
Измените программу так, чтобы она указывала,имеют ли
строки одинаковую длину, и если нет, то какая из них длиней
*/
#include <iostream>
#include <string>
#include <cctype>

using namespace std;

int main(){
	string s1, s2;

	getline(cin, s1);
	getline(cin, s2);

	if (s1 == s2)
        cout << "Строки равны\n" << "Одинаковая длина\n";
    else if (s1 > s2)
        cout << "s1 больше чем s2\n";
	else
		cout << "s2 больше чем s1\n";
	if (s1.size() > s2.size())
		cout << "Самая длинная строка - s1\n";
	else if (s1.size() <  s2.size())
		cout << "Самая длинная строка - s2\n";

	return 0;
}

/**

Input:

Hi, Dad!
Hi, Dad

Output:
Строчки равны
Одинаковая длина

*/
