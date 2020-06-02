/** Matrix19. Дана матрица размера M × N. Для каждой строки матрицы найти сумму ее элементов. */

/// Роголев В.А. П1-18 27.05.2020

#include <iostream>

using namespace std;

int main(){
    int m,n;
    size_t i,j;
    cin >> m >> n ;
    double mas[m][n];
    double smas[m];
    smas[0] = 0;
    for (i = 0;i < m;i++)
        for(j = 0;j < n;j++){
            cin >> mas[i][j];
            smas[i]+=mas[i][j];
        }
    for(i = 0;i < m;i++){
        cout << smas[i] << endl;
        }
return 0;
}
