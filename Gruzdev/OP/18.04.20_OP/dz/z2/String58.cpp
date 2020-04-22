/** 
String58. Дана строка, содержащая полное имя файла, т. е. имя диска, список каталогов (путь), собственно имя и расширение. Выделить из этой строки имя файла (без расширения).
*/

#include <string>
#include <iostream>

using namespace std;

int main(){

string s, s1, s2;
int n = 0;
	cout << "Enter full path to the file: ";
	getline(cin, s);

		for(int i = s.size()-1;i >= 0;i--)
			if(s[i] == '.'){
				n = --i;
				break;}

		while(s[n] != '/'){
			s1 += s[n];
			--n;
		}

		for(int j = s1.size()-1;j >= 0;j--)
			s2 += s1[j];

	cout << "Name your file(without expansion) - " << s2 << endl;
   return 0;
}

/**
Example:

Input:
Enter full path to the file: C://PutKFilu/Rom4ik/Ci_files/NewFile.txt

Output:
Name your file(without expansion) - NewFile
*/
