/** Команда состоит из 3-х человек: Груздев Роман, Герасимов Дмитрий, Петр Митюшин.
П1-18, 26.05.2020 г.
*/
#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <fstream>
#include "func.h"

using namespace std;

// 1.Загрузить из файла
void load(vector<Nomination> *v, string fname) {
    Nomination nom;
    ifstream in(fname);

    char delim;
    v->clear();
    while (in >> nom.nom_id >> nom.name >> nom.pr >> nom.date.day >> delim >> nom.date.month >> delim >> nom.date.year >> nom.cost >> nom.t){
	v->push_back(nom);
    }
	in.close();
   cout << endl;
}

// 2.Выгрузить в файл

void numCh(string s1, string &t1, string s2, string &t2, double digit, string &t3){
	char num = s1.size();
	//t1
	if (num > 7)
		t1 = "\t";
	else
		t1 = "\t\t";
	//t2
	if ((s2.size() + num) > 9)
		t2 = "\t";
	else
		t2 = "\t\t";
	//t3
	t3 = "";
	int n = digit * 100;
	int cop_n = n;
	int count = 0;
	while (cop_n){
		++count;
		cop_n /= 10;
	}
	cop_n = n;
	for (size_t i = 0; i != 2; ++i){
		if (!(cop_n % 10))
			--count;
		else
			break;
		cop_n /= 10;
	}
	int chastn = 7;
	while (chastn > count){
		t3 += " ";
		--chastn;
	}
	if (count <= 6)
		t3 += "\t";
	else
		t3 += "\t\t";
	
	
}
//input.txt
void save(vNom &v, string fname_o){
	ofstream out(fname_o, ios::app);

	string t1, t2, t3;
	for(size_t i = 0; i != v.size(); i++){
		numCh(v[i].name, t1, v[i].pr, t2, v[i].cost, t3);
		out << v[i].nom_id << "  \t"
			<< v[i].name << "  " << t1
			<< v[i].pr << "   " << t2
			<< v[i].date.day << "." << v[i].date.month << "." << v[i].date.year << "  \t"
			<< v[i].cost << t3
			<< v[i].t << endl;
	}
	out << endl;	
}

// 3.Добавить новый заказ
void append(vNom *v){
	Nomination nom;
	char delim;
        while(cin >> nom.nom_id >> nom.name >> nom.pr >> nom.date.day >> delim >> nom.date.month >> delim >> nom.date.year >> nom.cost >> nom.t){

        v->push_back(nom);
	break;
	}
	cout << endl;
}

// 4.Редактировать сумму заказа
void edit(vNom &v, size_t idx){
	std::cout << "Введите новую сумму: ";
	double ed_cost;
	std::cin >> ed_cost;
	v[--idx].cost = ed_cost;
	cout << endl;
}

// 5.Удалить заказ
void del(vNom *v, size_t idx){
	v->erase(v->begin() + (--idx));
	cout << endl << "Изделие удалено!" << endl;
}

// 6.Сортировать по дате 
bool comp_year (const Nomination& a, const Nomination& b) { return (a.date.year < b.date.year); }

bool comp_month (const Nomination& a, const Nomination& b) { return (a.date.month < b.date.month); }

bool comp_day (const Nomination& a, const Nomination& b) { return (a.date.day < b.date.day); }

void sort(vNom &v){

	sort(v.begin(), v.end(), comp_year);
	sort(v.begin(), v.end(), comp_month);
	sort(v.begin(), v.end(), comp_day);
	cout << endl;
}


// 7.Выдать общий список
void print_all(vNom v){
	cout << "ID\tНаименование\tПроизводитель\tДата\t\tСумма\tЕсть ли на складе\n";
	string t1, t2, t3;
	for(size_t i = 0; i != v.size(); i++){
		numCh(v[i].name, t1, v[i].pr, t2, v[i].cost, t3);
		cout << v[i].nom_id << "  \t"
			<< v[i].name << "  " << t1
			<< v[i].pr << "   " << t2
			<< v[i].date.day << "." << v[i].date.month << "." << v[i].date.year << "  \t"
			<< v[i].cost << t3
			<< v[i].t << endl;
	}
	cout << endl;		
}
/*
void sortAZ(vNom &v){
	
}
*/










