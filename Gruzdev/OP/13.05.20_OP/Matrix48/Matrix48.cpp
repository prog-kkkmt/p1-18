/** Matrix48. Дана матрица размера M × N и целые числа K1 и K2 (1 ≤ K1 < K2 ≤ N). Поменять местами столбцы матрицы с номерами K1 и K2. */
// Груздев Р.И. 13.05.2020

#include <iostream>
using namespace std;

int main(){
    size_t m, n, k1, k2;
    	cout << "Input M, N: ";
	cin >> m >> n;
    int mtrx[m][n];
	cout << "Input mtrx M x N:" << endl;
	for(size_t i = 0; i < m; i++)		
		for(size_t j = 0; j < n; j++)	
			cin >> mtrx[i][j];

	cout << "Input k1, k2: ";
	cin >> k1 >> k2;
	
	if(k1 != k2){
		int temp = 0;
		for(size_t i = 0; i < m; i++){
			temp = mtrx[i][k1-1];
			mtrx[i][k1-1] = mtrx[i][k2-1];
			mtrx[i][k2-1] = temp;
		}
	}

	cout << endl;	
	
	for(size_t i = 0; i < m; i++){
		for(size_t j = 0; j < n; j++)
			cout << mtrx[i][j] << ' ';
		cout << endl;
	}

	return 0;
}
