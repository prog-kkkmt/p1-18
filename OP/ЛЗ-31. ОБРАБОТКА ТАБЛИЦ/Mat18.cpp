
/** Matrix18. Дана матрица размера M × N и целое число K (1 ≤ K ≤ N). Найти сумму и произведение элементов K-го столбца данной матрицы.
брусник Вадим*/
#include <iostream>
using namespace std;

int main(){
   int summa = 0, proisved = 1;
   size_t m, n, k;
	cin >> m >> n;
	 cin >> k;
	  cout << endl;
   int mtr[m][n];
   for(size_t i = 0; i != m; i++)
	for(size_t j = 0; j != n; j++)
        	cin >> mtr[i][j];
   for(size_t i = 0; i < m; i++){
		summa +=  mtr[i][k - 1];
		proisved *= mtr[i][k - 1];
}
	cout << "Summa = " << summa << endl << "Proisvedenie = " << proisved << endl;

    return 0;
}
