/** Программа выводит массив заданной длины(строка х столбец). После чего удаляет его. */
#include <iostream>
using namespace std;

int ** create_array2d(size_t a, size_t b){
	size_t count = 4;
	int ** m = new int *[a];
	for (size_t i = 0; i != a; ++i){
		m[i] = new int[b];
		for(size_t j = 0; j != b; j++)
			m[i][j] = count + 1;
	}
	return m;
}

void free_array2d(int ** m, size_t a){
	for (size_t i = 0; i != a; ++i)
		delete [] m[i];
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
    free_array2d(m,a);

    return 0;
}

// Проверил исходник: Груздев Роман, П1-18

/**
Тестовые данные:

Input:
5 4

Output:

5 5 5 5
5 5 5 5
5 5 5 5
5 5 5 5
5 5 5 5
Массив пуст!
  */
