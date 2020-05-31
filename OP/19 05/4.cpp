/**4. С клавиатуры ввести значения двух вещественных переменных. Посчитать их сумму и разность, вывести результат на экран. Решить задачу, используя динамическую память.
Брусник Вадим П1-18
*/
#include <iostream>
using namespace std;
int main(){
	double a, b;
    	cout << "a: ";
        cin >> a;
        cout << "b: ";
        cin >> b;

	double *psum = new double, *pdiff = new double;
	double  *aa = &a, *bb = &b;
	*psum = *aa + *bb;
	*pdiff = *aa - *bb;

	cout << "Sum: " << *psum << endl;
	cout << "Diff: " << *pdiff << endl;

	delete psum;
	delete pdiff;

    return 0;
}
