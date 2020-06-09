/** 3. Ввести с клавиатуры номер дня недели. Вывести на экран его на 
звание. Использовать перечисления (enum). */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;


int main(){
     enum Days {Pn = 1, Vt, Sr, CHt, Pt, Sb, Vs};
     cout << "Введите номер дня недели: ";
     int day;
     cin >> day;
     day = static_cast<Days>(day); // Здесь происходит приведение типов, т.е. тип переменной day(сейчас он int) -> переходит в тип Days(т.е. в enum(перечислительный) тип) ;

     switch (day){
     	case Pn:
       		cout << "Понедельник :c" << endl;
	break;
     	case Vt:
       		cout << "Вторник :|" << endl;
	break;
     	case Sr:
       		cout << "Среда :\\ " << endl;
        break;
     	case CHt:
       		cout << "Четверг :>" << endl;
	break;
     	case Pt:
       		cout << "Пятница :)" << endl;
	break;
     	case Sb:
       		cout << "Суббота :D" << endl; 
       	break;
     	case Vs:
       		cout << "Воскресенье :<" << endl;
      	break;
     	default:
	 	cout << "Неверный номер дня недели! ;(" << endl;
     }

     return 0;
 }
