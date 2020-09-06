/** 2. С клавиатуры ввести строку, состоящую из нескольких слов, разде 
ленных одним пробелом. Для хранения строки использовать новый тип
данных TEXT, введенный с помощью typedef. Написать функцию под 
счета количества слов в строке. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>
using namespace std;

typedef string text;

int counter(text str){
	int k = 0, s = 0;
	for(size_t i = 0; i != str.size(); i++){
		if(str[i] != ' ' && s == 0){
			k++;
			s = 1;
		}
		if(str[i] == ' ')
			s = 0;
	}
	return k;
}	
	
	
	
int main(){
	text str1;
	cout << "Введите вашу строку: ";
	getline(cin, str1);
	cout << "Количество слов в строчке -  " << counter(str1) << endl;
    return 0;	
}
