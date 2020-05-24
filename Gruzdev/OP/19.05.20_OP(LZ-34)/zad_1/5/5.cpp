/**  5. Написать программу, демонстрирующую утечку памяти. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    int *pi = new int;
	*pi = 4387 + 742;
	pi = new int;
	*pi = 832 + 732 * 3 - 13142 + 32;
	cout << "digit = " << *pi << endl;

	// Кажется появилась протечка памяти

   return 0;
}
