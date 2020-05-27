/** Minmax7. Дано целое число N и набор из N целых чисел. Найти номера первого максимального и последнего минимального элемента из данного набора и вывести их в указанном порядке. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

int main(){
    int n, digit;
    cout << "Enter n: ";
    cin >> n;
    cin >> digit;
    int max = digit, min = digit, pmax = 0, pmin = 0; 
    for(int i = 1; i <= n-1; i++){
	cin >> digit;

	if(digit > max){
		max = digit;
		pmax = i;
    	}

	 if(digit <= min){
		min = digit;
		pmin = i;
	}

	    	
    }
    	cout << "Pos min = " << pmin << endl << "Pos max = " << pmax << endl;





    return 0;
}

