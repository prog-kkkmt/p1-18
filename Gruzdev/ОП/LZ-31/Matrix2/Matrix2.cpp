/** Matrix2. Даны целые положительные числа M и N. Сформировать целочисленную матрицу размера M × N, у которой все элементы J-го столбца имеют значение 5·J (J = 1, …, N). */
// Груздев Р.И. 13.05.2020

#include <iostream>
using namespace std;

int main(){
    size_t m, n;
	cout << "Input M x N: ";
	cin >> m >> n;
    int mtrx[m][n];
	for(size_t i = 0; i < m; i++){
		for(size_t j = 0; j < n; j++){
			int el = 5 * j;
			mtrx[i][j] = el;
		}
	}

	for(size_t i = 0; i < m; i++){
		for(size_t j = 0; j < n; j++)
			cout << mtrx[i][j] << ' ';
		cout << endl;
	}

	return 0;
}
