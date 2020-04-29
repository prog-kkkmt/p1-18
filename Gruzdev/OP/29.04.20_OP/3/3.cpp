/** Программа так же как и предыдущая выводит массив заданной длины(строка х столбец), но работает эффективнее. После чего удаляет его, так же эффективно :).*/
#include <iostream>
using namespace std;



int ** create_array2d(size_t a, size_t b){

	int ** m = new int * [a];
	m[0] = new int [a * b];
	for (size_t i = 1; i != a; ++i){
		m[i] = m[i - 1] + b;
	}
	return m;
}

void free_array2d(int ** m){
	delete [] m[0];
	delete [] m;
	cout << "Массив пуст!" << endl;
}

int main(){
 size_t a, b;
   cin >> a >> b;
   int ** m = new int* [a];
   m = create_array2d(a,b);
        for(size_t i = 0; i != a; i++){
                for(size_t j = 0; j != b; j++)
                        cout << m[i][j] << ' ';
        cout << endl;
}
    free_array2d(m);
    return 0;
}
// Проверил исходник: Груздев Роман, П1-18

/**
Тестовый набор: 

Input:
5 4

Output:
0 0 0 0
0 0 0 0
0 0 0 0
0 0 0 0
0 0 0 0
Массив пуст!


 */
