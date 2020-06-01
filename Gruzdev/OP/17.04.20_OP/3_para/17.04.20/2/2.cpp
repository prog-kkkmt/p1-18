/**Задание 2. Гусятинер Л.Б., (c) 17.04.2020
Вводятся границы интервала целых чисел, -100 <= a <= b <= 100.
Вводится вид операции: 1 - сложение, 2 - умножение.
Требуется найти сумму или произведение чисел на интервале.
Вывод должен выглядеть как в примере
Использовать switch-case. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

void sum(int a, int b);
void prois(int a, int b);

void menu(){
	cout << endl;
	cout << "1. Сложение\n" ;
	cout << "2. Умножение\n" << endl;

}

int main(){
    int a,b, dig;
	cout << "Введите 2 числа(от и до): " << endl;
	cin >> a >> b;
	menu();
	cout << "Какую операцию надо выполнить?" << endl;
	cin >> dig;
	
	switch (dig){
		case 1:
			sum(a,b);
		break;
		case 2:
			prois(a,b);
		break;
		default:
			cout << "Надо вводить 1 или 2" << endl;
		break;

	}
	cout << endl;

	return 0;
}

void sum(int a, int b){
	int s = 0;
	for (int i = a; i != b; i++){
		if (i < 0)
			cout << '(' << i << ')' << '+';
		else
			cout << i << '+';
		s += i;
	}
	s += b;
	if (b < 0)
		cout << '(' << b << ')' << " = " << s;
	else
		cout << b << " = " << s; 
}

void prois(int a, int b){
	int p = 1;
		for (int i = a; i != b; i++){
			if (i < 0)
        	                cout << '(' << i << ')' << '*';
                	else
                        	cout << i << '*';
			p *= i;
		}
	
	p *= b;
        
		if (b < 0)
			cout << '(' << b << ')' << " = " << p;
		else
			cout << b << " = " << p;
}


