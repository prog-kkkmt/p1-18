/** Proc50. Описать процедуру TimeToHMS(T, H, M, S), определяющую по времени T (в секундах) содержащееся в нем количество часов H, минут M и секунд S (T — входной, H, M и S — выходные параметры целого типа). Используя эту процедуру, найти количество часов, минут и секунд для пяти данных отрезков времени T1, T2, …, T5.
*/
// Выполнил: Груздев Роман, П1-18

#include <iostream>
using namespace std;

void TimeToHMS(unsigned long sec){
	unsigned long min = sec % 3600 / 60, h = sec/3600 ;
	cout << "В количстве секунд(которое вы ввели) содержится - " << h << " h, " << min << " m, " << sec % 3600 % 60 << " s." << endl;
}



int main(){
    unsigned long time;
	cout << "Введите кол-во секунд - ";
	cin >> time;

	TimeToHMS(time);

    return 0;
}
