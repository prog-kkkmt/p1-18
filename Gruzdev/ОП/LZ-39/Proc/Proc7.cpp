/** Описать процедуру InvDigits(K), меняющую порядок следования цифр целого положительного числа K на обратный (K — параметр целого типа, являющийся одновременно входным и выходным). С помощью этой процедуры поменять порядок следования цифр на обратный для каждого из пяти данных целых чисел. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

void InvDigits(int *digit){
	int temp = *digit;
	*digit = 0;
	while(temp != 0){
		*digit = *digit * 10 + (temp % 10);
		temp = temp / 10;
	}
}


int main(){
	for(int i = 0; i != 5; i++){
		int digit;
		cout << "Enter digit: ";
		cin >> digit;
		InvDigits(&digit);
		cout << "InvertDigit: " << digit << endl;
	}





    return 0;
}
