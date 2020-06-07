/** Команда состоит из 3-х человек: Груздев Роман, Герасимов Дмитрий, Петр Митюшин.
П1-18, 05.06.2020 г.
*/
#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include <cstdlib>
#include "func.h"

using namespace std;

// Меню
void menu() {
	cout << "0. Выход" << endl
		<< "1. Загрузить из файла" << endl
		<< "2. Выгрузить в файл" << endl
    		<< "3. Добавить новое наименование" << endl
    		<< "4. Редактировать наименование" << endl
    		<< "5. Удалить наименование" << endl
    		<< "6. Сортировать по дате прозводства" << endl
		<< "7. Выдать общий список наименований" << endl
		<< "8. Максимум и минимум по ..." << endl;
}

int main() {
    
    vNom v;
    string fname, fname_o;
    int choice = -1;
    while (choice != 0) {
        menu();
	cout << endl << "Введите пункт меню: ";
        cin >> choice;
	cout << endl;
        switch (choice) {
        case 0:
            // 0. Выход
	    cout << "До скорых встреч!	:)" << endl;
            break;
        case 1:
            // 1. Загрузить из файла
	    cout << "Введите название файла (с его разрешением): ";
	    cin >> fname;    	
            load(&v, fname);
            break;
        case 2:
            // 2. Выгрузить в файл
	    cout << "Введите название файла в которой будет выгружен вектор (с его разрешением): ";
	    cin >> fname_o;
            save(v, fname_o);
            break;
        case 3:
            // 3. Добавить новый заказ
	    cout << "Добавьте новый заказ(пример: ID\\Наименование изделия\\Производитель\\Дата\\Стоимость\\Есть ли на складе):" << endl;
            append(&v);
            break;
        case 4:
            // 4. Редактировать сумму заказа
	    cout << "В каком заказе хочется поменять сумму? - ";
	    size_t ix;
	    cin >> ix;
            edit(v, ix);
            break;
        case 5:
            // 5. Удалить заказ
	    cout << "Какой заказ хотелось бы удалить? - ";
	    size_t idx;
	    cin >> idx;
            del(&v, idx);
            break;
        case 6:
            // 6. Сортировать по дате
	    cout << "Сортировка была произведена!" << endl;
            sort(v);
            break;
        case 7:
            // 7. Выдать общий список
            print_all(v);
            break;
	case 8:
	    // 8. Выдать максимум и минимум по количеству или по сумме
            maxxMinn(v);
            break;
        default:
            cout << "Неверный ввод. От 0 до 8" << endl;
            break;
        }
    }

    return 0;
}
