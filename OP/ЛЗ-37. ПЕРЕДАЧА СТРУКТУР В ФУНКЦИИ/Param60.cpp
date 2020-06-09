/*
 * Param60∞. »спользу€ тип TDate и функцию LeapYear (см. задание Param59), описать функцию DaysInMonth(D) целого типа с параметром типа TDate, котора€ возвращает количество дней дл€ мес€ца, указанного в дате D. ¬ывести значение функции DaysInMonth дл€ п€ти данных дат (предполагаетс€, что все даты €вл€ютс€ правильными)
 */

#include <iostream>
#include "tdate.h"

using namespace std;

int main(){
	setlocale(LC_ALL, "rus");

	const size_t N = 5;

	for (size_t i = 0; i != N; ++i){
		tdate date;
		cout << i+1 << ". " << "¬ведите день, мес€ц, год: ";
		cin >> date.day >> date.month >> date.year;
		cout << "¬ этом мес€це: "<< date.days_in_month() << " дней." << endl
			<< endl;
	}

	return 0;
}
