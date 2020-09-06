/** 1. Используя typedef, определить новые имена для всех стандарт 
ных типов. Объявить несколько переменных новых типов данных, задать
им значения, вывести на экран. */
// Выполнил: Груздев Роман, П1-18

#include <iostream> 
#include <string>
using namespace std;

	typedef long double big_vesh;
        typedef double vesh;
        typedef float mini_vesh;
        typedef char simba;
        typedef unsigned char unsimba;
        typedef short krot;
        typedef unsigned short unkrot;
        typedef int cel;
        typedef unsigned int uncel;
        typedef long dlin;
        typedef unsigned long undlin;
        typedef long long mega_dlin;
        typedef unsigned long long unmega_dlin;
        typedef void pustoy;
        typedef bool truly;

struct Tovar4ik{
                string name;
                vesh length;
                uncel width;
                mini_vesh height;
                simba class_;
                truly dostupen;
                string color;
        };


int main(){

	Tovar4ik tovar4ik;
		tovar4ik.name = "Stol";
		tovar4ik.length = 3.5;
		tovar4ik.width = 1;
		tovar4ik.height = 1.2;
		tovar4ik.class_ = 'A';
		tovar4ik.dostupen = true;
		tovar4ik.color = "Brown";

	cout << "Наименование: " << tovar4ik.name << endl;
	cout << "Длина: " << tovar4ik.length << " m" <<  endl;
	cout << "Ширина: " << tovar4ik.width << " m" << endl;
	cout << "Высота: " << tovar4ik.height << " m" << endl;
	cout << "Класс: " << tovar4ik.class_ << endl;
	cout << "Доступен на скаладе: " << tovar4ik.dostupen << "(присутствует)" << endl;
	cout << "Расцветка: " << tovar4ik.color << endl;
    return 0;
}
