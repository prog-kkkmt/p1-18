/**  5. Разработать класс «монстр». Члены класса — возраст монстра, здо 
ровье монстра, сила, защита. В классе предусмотреть: конструктор, функ 
цию, выводящую всю информацию о монстре, функцию, наносящую
удар по другому монстру (результат работы функции — случайное количе 
ство очков от 1 до максимальной силы монстра), и функцию, принимаю 
щую удар (результат работы функции: от текущего здоровья монстра от 
нимается число очков, переданное в качестве параметра функции за ми 
нусом защиты монстра). Промоделировать бой монстров. */
// Выполнил: Груздев Роман, П1-18

#include <iostream>
#include <stdlib.h>
using namespace std;

class Monster{
	private:
		int health, age, protect, power;
	public:
		Monster(int, int, int, int);

		void info();

		void hit(Monster& a, Monster& b, bool f);

		int xHealth();
};

Monster::Monster(int h, int a, int pr, int p){
	health = h;
	age = a;
	protect = pr; 
	power = p;
}

void Monster::info(){
	cout << "\x1b[34m Возраст монстра: \x1b[0m" << age << endl;
	cout << "\x1b[31m Здоровье монстра: \x1b[0m" << health << endl;
	cout << "\x1b[36m Защита монстра: \x1b[0m" << protect << endl;
	cout << "\x1b[33m Сила монстра: \x1b[0m" << power << endl << endl;
}

void Monster::hit(Monster& a, Monster& b, bool f){
	int c;
	if(f){
		c = rand() % a.power + 1;
		if(c >= b.protect)
			b.health -= c - b.protect;
       		else b.health += 0;	}
	else{
		c = rand() % b.power + 1;
		if(c >= a.protect)
			a.health -= c - a.protect; 
		else a.health += 0;	}
}

int Monster::xHealth(){
	return health;
}

void warning(){
	cout << "\x1b[1;5;31m Warning!\x1b[0m" << endl;
	cout << "\x1b[1;31m В игре присутствуют сцены насилия(драки) между выдуманными монстрами! Просьба уберите от экранов детей, беременных женщин и людей с слабой психикой(UPD: Так же защитников монстров(те кто выступает за их права в нашем обществе))\n\x1b[4;34m Небольшое пояснение:\x1b[0;34m В игре есть всегда 2 заранее собранных монстра, у монстров во всей программе есть собственные номера - первый монстр(1), а второй монстр(2) соответственно. \x1b[0m" << endl;
	cout << "\x1b[1;5;31m Warning!\x1b[0m" << endl;
}

void menu(){
	cout << "\x1b[31m 1. Начать битву \x1b[0m\n";
	cout << "\x1b[32m 2. Посмотреть инфу о монстре\x1b[0m\n";
	cout << "\x1b[33m 0. Выйти из игры\x1b[0m\n";
}

int main(){  
	setlocale(LC_ALL, "Russian");
	
	warning();
	srand(time(0));
    int h1 = rand() % 50 + 20, a1 = rand() % 100, pr1 = rand() % 6 + 1, p1 = rand() % 10 + 6;
    int h2 = rand() % 50 + 20, a2 = rand() % 100, pr2 = rand() % 6 + 1, p2 = rand() % 10 + 6;
    Monster a(h1,a1,pr1,p1), b(h2,a2,pr2,p2);
    int dig = -1, winner, it, number;
    bool fl;
	while(dig != 0){
		menu();
		cout << "Введите цифру из меню: ";
		cin >> dig;
		cout << endl;
		switch(dig){
			case 1:
				cout << "Кто начнёт битву? - ";
				cin >> it;
				while((a.xHealth() > 0) && (b.xHealth() > 0)){
					if(it != 1 && it != 2)
					       	while(true){
                                               		 cout << "Некорректный номер монстра. Введите 1 или 2: ";
                                               		 cin >> it;
                                               		 if(it == 1 || it == 2)
                                                        	break;
                                                }
                                        
					if(it == 1){
						fl = true;
						a.hit(a,b,fl);}
					else if(it == 2){
					      	fl = false;
						b.hit(a,b,fl);}
					
					cout << "Здоровье монстра 1: " << a.xHealth() << endl; cout << "Здоровья монстра 2: " << b.xHealth() << endl;
					if((a.xHealth() > 0) && (b.xHealth() > 0)){
						cout << endl << "Кто кому нанесёт следующий удар? - ";
						cin >> it;}
					else break;
				}
				if(a.xHealth() <= 0)
					winner = 2;
				else winner = 1;
				cout << "\x1b[1;35mБитва завершена, победил монстр - \x1b[0m" << winner << endl;
				exit(0);
			break;
			case 2:
				cout << "О каком монстре посмотрем инфу? -  ";
                                cin >> number;
                                if(number != 1 && number != 2)
					while(true){
						cout << "Неправильный номер монстра, введите 1 или 2: ";
                                        	cin >> number; 
						
						if(number == 1 || number == 2)
							break;
					}
				
				if(number == 1)
                                        a.info();
                                else if(number == 2)
					b.info();
			break;
			case 0:
				cout << "До скорых встреч ;)" << endl;
				exit(0);
			break;
			default:
				cout << "Введите верный пункт меню." << endl;
			break;
		}	
	}

    return 0;
}
