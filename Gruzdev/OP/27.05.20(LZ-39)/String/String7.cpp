/** String7. Дана непустая строка. Вывести коды ее первого и последнего символа. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>
using namespace std;

int main(){
    string s;
    cout << "Enter string: ";
    cin >> s;
    cout << "First simbol code: " << (int) s[0] << endl << "Last simbol code: " << (int) s[s.size()-1] << endl;



    return 0;
}
