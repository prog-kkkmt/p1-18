/** Matrix7°. Дана матрица размера M × N и целое число K (1 ≤ K ≤ M). Вывести элементы K-й строки данной матрицы. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

int main(){
    size_t m, n, k;
	cout << "Введите количество строк в матрице: ";
	cin >> m;
	cout << "Введите количество столбцов в матрице: ";
	cin >> n;
    int **mtrx = new int *[m];
    	 for(size_t i = 0; i != m; i++)
		mtrx[i] = new int [n];

	cout << "Введите все элементы матрицы: " << endl;
	for(size_t i = 0; i != m; i++)
		for(size_t j = 0; j != n; j++)
			cin >> mtrx[i][j];

	cout << "Введите номер строчки: ";
	cin >> k;
	if(k >= 1 && k <= m){
	cout << "Все элементы строчки " << k << ": " << endl;
	for(size_t i = 0; i != m; i++)
		for(size_t j = 0; j != n; j++)
			if(i == k - 1)
				cout << mtrx[i][j] << ' ';
	}
	else cout << "Вы допустили ошибку при введении номера строчки матрицы!";
	delete mtrx;
	cout << endl;

    return 0;
}
