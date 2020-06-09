/** Param24. Описать процедуру SwapCol(A, M, N, K1, K2), осуществляющую перемену местами столбцов вещественной матрицы A размера M × N с номерами K1 и K2. Матрица A является входным и выходным параметроми K1 или K2 больше N, то матрица не изменяется. Используя эту процедуру, поменять для данной матрицы A размера M × N столбцы с данными номерами K1 и K2.
 */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <vector>

using namespace std;

void SwapCol(vector<vector<double>> *vec, size_t m, size_t n, size_t k1, size_t k2, bool *flag){
        vector<vector<double>> vec2 = *vec;

        if(k1 != k2 && k1 <= n && k2 <= n){                                                    
                *flag = true;
                double temp = 0;
                for(size_t  i = 0; i != m; i++){
                        temp = vec2[i][k1-1];
                        vec2[i][k1-1] = vec2[i][k2-1];
                        vec2[i][k2-1] = temp;
                }
        }
        else cout << "Увы, вы привысили количество столбцов, ваша матрица не изменилась: ";
        cout << endl;
        *vec = vec2;
}

int main(){

    size_t m, n, k1, k2;
        cout << "Введите количество строк: "; cin >> m; cout << endl;
        cout << "Введите количество столбцов: "; cin >> n; cout << endl;
        cout << "Заполните вещественную матрицу:" << endl;
    vector<vector<double>> vec(m);
    
    for(size_t i = 0; i < m; ++i){
        vec[i].resize(n);
        for(size_t j = 0; j < n; ++j)
                cin >> vec[i][j];
    }
        cout << endl << "Вы хотите поменять столбцы под номерами: ";
        cin >> k1 >> k2;
        cout << endl;
        bool flag = false;

        SwapCol(&vec,m,n,k1,k2,&flag);

        if(flag == true)
                cout << "Ваша изменённая матрица готова: " << endl;

        for(size_t i = 0; i < m; i++){
                for(size_t j = 0; j < n; j++)
                        cout << vec[i][j] << ' ';
                cout << endl;
        }
    return 0;
}

