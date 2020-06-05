/**Задание 1.
Реализовать на языке C++ программу для демонстрации работы функции бинарного поиска binSearch [1] */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;


// Описана функция бинарного поиска
int Bin_Search(int mas[], int key, int n){
   int mid, r = n - 1, l = 0;
  
   while((l <= r)){
	mid = (l + r) / 2;
	if(mas[mid] == key)
		return mid;
	if(mas[mid] < key)
		l = ++mid;
	else r = --mid;
   }
   return -1; // если введено неверное число(которого нет в массиве), то возвращается -1
}

int main(){
  int  n, quantity, key;


	cout << "Введите кол-во чисел в массивчике: ";
	cin >> quantity;
  int mas[quantity];
  	cout << "Хорошо, давайте теперь его заполним.. " << endl;
	// Заполняем массив
	for(int i = 0;i < quantity;i++){
		cin >> n;
		mas[i] = n;
	}
	int k;
	// Сортируем массив(т.к. иначе не будет работать бинарный поиск)
	for(int i = 0;i < quantity-1;++i)
		for(int j = 0;j < quantity-1;++j)
			if(mas[j] > mas[j + 1]){
				k = mas[j];
				mas[j] = mas[j + 1];
				mas[j + 1] = k;
			}	
	// Вывод массива(чтобы удостовериться, что он отсортирован)
	for(int i = 0;i < quantity;i++)
		cout << "|" << mas[i] << "| ";

	cout << endl << "Отлично! Теперь выполним бинарный поиск.." << endl;
	cout << "Введите ключ ..";
	cin >> key; // Вводим число у которого хотим узнать позицию

	if(Bin_Search(mas,key,quantity) == -1)
		cout << "Мы не смогли поймать число, видимо оно знало, что мы прийдём за ним.." << endl;
	else  cout << "Число поймано! Оно лежало на позици - " <<  Bin_Search(mas,key,quantity);

    return 0;
}

