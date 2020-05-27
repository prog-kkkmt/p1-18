/** Series7. Дано целое число N и набор из N вещественных чисел. Вывести в том же порядке округленные значения всех чисел из данного набора (как целые числа), а также сумму всех округленных значений. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>

using namespace std;

int main(){
   size_t n;
   	cout << "Введите количество чисел: ";
   	cin >> n;
   double *mas = new double[n];
   int sum = 0;
   	cout << "Введите эти числа: ";
   	for(size_t i = 0; i != n; i++)
		cin >> mas[i];

	for(size_t j = 0; j != n; j++){
		cout << (int) mas[j] << ' ';
		sum += (int) mas[j];
	}
	cout << endl << "Sum = " << sum << endl;
   delete mas;


}
