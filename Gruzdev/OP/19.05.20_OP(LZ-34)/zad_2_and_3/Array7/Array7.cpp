/** Array7°. Дан массив размера N. Вывести его элементы в обратном порядке. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    int n;
	cout << "Введите размер массива: ";
	cin >> n;
    int *mas = new int[n];
	cout << "Введите элементы массива: " << endl;
	for(int i = 0; i != n; i++)
		cin >> mas[i];
	for(int i = n - 1; i >= 0 ; i--)
		cout << mas[i] << ' ';
	delete mas;
    return 0;
}
