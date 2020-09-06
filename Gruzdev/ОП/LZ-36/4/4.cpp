/** 8. Сформировать массив, содержащий сведения об ассортименте обу 
ви в магазине фирмы. Структурный тип содержит поля: артикул, наиме 
нование, количество, стоимость одной пары. Артикул начинается с буквы
Д — для дамской обуви, М — для мужской, П — для детской. (Заменил на соотв. англ. буквы (D\M\P) )
    Написать программу, выдающую информацию:
    • о наличии и стоимости обуви артикула X;
    • ассортиментный список дамской обуви с указанием наименования
и имеющегося в наличии числа пар каждой модели. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <string>
#include <fstream>
#include <vector>

using namespace std;


struct Inf_footwear{
	string article;
	string name;
	int quantity;
	int price;
};

void load(vector<Inf_footwear> &vec, string fname) {
    Inf_footwear inf;
    ifstream in(fname);
    vec.clear();
    while (in >> inf.article >> inf.name >> inf.quantity >> inf.price)
    {
        vec.push_back(inf);
    }

   cout << endl;
}

void menu(){
    cout << "0. Выход\n";
    cout << "1. Наличие и стоимость артикула Х\n";
    cout << "2. Ассортиментный список дамской обуви \n";
    cout << "3. Загрузить файл в вектор \n";
    cout << endl;
}
int main(){
	vector<Inf_footwear> vec;
	int a = -1;
	string artic, fname;
	while(a != 0){
		menu();
		cout << "Введите пункт меню: ";
		cin >> a;
		switch(a){
			case 0:
				cout << "До скорого!";
			break;
			case 1:
				cin >> artic;
				for(size_t i = 0; i != vec.size(); i++)
					if(artic == vec[i].article){
						if(vec[i].quantity > 0)
							cout << "В наличии есть. Стоимость одной пары - " << vec[i].price << endl;
						else cout << "В наличии нет. Стоимость одной пары - " << vec[i].price << endl;
}
   			break;
			case 2:
				for(size_t i = 0; i != vec.size(); i++)
					if( vec[i].article[0] == 'D')
						cout << vec[i].name << "   \t" << vec[i].price << endl;
				cout << endl;				
			break;
			case 3:
				cout << "Введите название файла: ";
				cin >> fname;
				load(vec, fname);
				cout << endl;
			break;
			default:
				cout << "Введите от 0 до 2" << endl;
			break;
		}
	}
    return 0;
}
