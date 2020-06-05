/**
Задание 1. Гусятинер Л.Б., (c) 17.04.2020
Палиндромом называется число, которое читается одинаково как слева направо, так и справа налево.
Например, 121, 5, 4774 - палиндромы, 122 - не является палиндромом.
Требуется вывести через запятую по 10 числе в строке все палиндромы в интервале от 1 до N, где 1 <= N < 1000.
Решение - 1 балл
За эффективность - бонус 1 балл.
Примечание. Решение считается эффективным, если экономит или память или процессорное время, или то и другое вместе.
В данной задаче решение может быть эффективным по времени */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

#define SIZE 400

int first_dig(int n){
        while(n / 10)
                n /= 10;
        return n;

}

bool is_palindrom(int n, int f){
        if(n % 10 == f)
                return true;
        return false;
}



int main(){
    int n, idx = 0;
    int *mas = new int[SIZE];
	cin >> n;

	for(int i = 1; i <= n; i++)
		if(is_palindrom(i, first_dig(i))){
			mas[idx] = i;
			++idx;
		}
	
	for(int i = 1; i < idx; i++){
		if(i % 10)
			cout << mas[i-1] << ',';
		else
			cout << mas[i-1] << endl;
	}

	cout << mas[idx - 1] << endl;
    delete mas;
    return 0;
}
