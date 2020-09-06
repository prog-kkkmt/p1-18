/**
 Param9. Описать процедуру RemoveForInc(A, N), удаляющую из вещественного массива A размера N «лишние» элементы так, чтобы оставшиеся элементы оказались упорядоченными по возрастанию: первый элемент не удаляется, второй элемент удаляется, если он меньше первого, третий — если он меньше предыдущего элемента, оставленного в массиве, и т. д. Например, массив 5.5, 2.5, 4.6, 7.2, 5.8, 9.4 должен быть преобразован к виду 5.5, 7.2, 9.4. Массив A и число N являются входными и выходными параметрами. С помощью этой процедуры преобразовать массивы A, B, C размера NA, NB, NC соответственно и вывести размер и содержимое полученных массивов.
*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <vector>

using namespace std;

void RemoveElements(vector <double> *vec, size_t vec_s){
        vector <double> localy;
                localy.reserve(localy.size() + vec->size());
                localy.insert(localy.begin(), vec->begin(), vec->end());

        size_t j = 0;
        size_t loc_s = vec_s;
                for (size_t i = 1; i != loc_s; i++)
                        if (localy[i] <= localy[j]){
                                vec->erase(vec->begin() + i);
                                localy.erase(localy.begin() + i);
                                --i;
                                --loc_s;
                        }
                        else
                                ++j;

}

int main(){
	size_t vec_s;
	vector <double> vec;
	double elem;
	cout << "Введите кол-во элементов в векторе: ";
	cin >> vec_s;

	cout << "Введите вещественные элементы вектора:" << endl;
	for (size_t i = 0; i != vec_s; i++){
		cin >> elem;
		vec.push_back(elem);
	}
		
	RemoveElements(&vec, vec_s);

	vec_s = vec.size();
	cout << "Массив на выходе:" << endl;
	for (size_t i = 0; i != vec_s; i++)
		cout << vec[i] << endl;

	return 0;
}

