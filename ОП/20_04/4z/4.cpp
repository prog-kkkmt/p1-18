/**9. Упражнение 3.10. Напишите программу поиска в строке знаков пунктуации.
Программа должна позволить ввести символьную строку, содержащую знаки пунктуации, и вывести ту же строку, но уже без знаков пункт*/
//Выполнил: Батраков Данила П1-18

#include <iostream>
#include <string>

using namespace std;

int main(){
  string s;
  	cout << "Enter your string: ";
	getline(cin,s);
	for(string::size_type i = 0;i <= s.size();i++)
		if(ispunct(s[i]))
			s[i] = ' ';
	cout << "Your string without punctuation: " << s << endl;

   return 0;
}
